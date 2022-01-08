---
layout: page
title: Versions
options: {menuItem: true}
---

<div>
    <h2>Az alkalmazás vagy a frissítő önálló letöltése elég a program sikeres futtatásához</h2>
    <p>Abban az esetben ha ön az alkalmazás letöltési linkjét válaszotta.
        <b>
            Nincs más tehendője mint el indítani és használni!
        </b>
    </p>
    <p>Ha ön a Frissítőt töltötte le.
        és <b>
            Egyszerűen csak futassa, és várjon amíg az letölti és elindítja az alkalmazás legfrissebb verzóját
        </b>
    </p>
</div>
<table border id="table">
    <tr>
        <th>Verzió szám</th>
        <th>Változások</th>
        <th>Legrégebbi ?</th>
        <th>Alkalmazás letöltési link</th>
        <th>Frissítő letöltési link</th>
    </tr>
</table>

<script type="text/javascript">
    class Version {
        latest
        version
        updatePatchUrl
        updaterUrl
        changeLog
    }

    class Versions {
        versions
    }

    function GetMechanic() {
        let response = fetch("https://gist.githubusercontent.com/zozobalogh0817/3b2ef4e635f0e3b7a9a3ffe3c0a5d051/raw")
        response
            .then(value => value.json())
            .then((json) => {
                let table = document.getElementById("table");
                json.versions.forEach(async (value) => {
                    let rowElement = document.createElement("tr")
                    let versionNumberCellElement = document.createElement("td")
                    versionNumberCellElement.innerText = value.version
                    let latestCellElement = document.createElement("td")
                    latestCellElement.innerText = value.latest
                    let changeLogCellElement = document.createElement("td")
                    changeLogCellElement.innerHTML = value.changeLog.join("<br>")
                    let downloadLinkElement = document.createElement("td")
                    let updaterLinkElement = document.createElement("td")
                    let mergerDownloadUrl = value.updatePatchUrl.slice(0, 19)
                        + "/get"
                        + value.updatePatchUrl.slice(19)
                    let updaterDownloadUrl = value.updaterUrl.slice(0, 19)
                        + "/get"
                        + value.updatePatchUrl.slice(19)
                    downloadLinkElement.innerHTML = `<a href=${mergerDownloadUrl} download="Merger.exe"><button> Download Merger</button></a>`
                    updaterLinkElement.innerHTML = `<a href=${updaterDownloadUrl} download="Updater.exe"><button> Download Updater</button></a>`

                    rowElement.append(versionNumberCellElement)
                    rowElement.append(changeLogCellElement)
                    rowElement.append(latestCellElement)
                    rowElement.append(downloadLinkElement)
                    rowElement.append(updaterLinkElement)
                    table.append(rowElement)
                })
            })
    }

    GetMechanic()
</script>