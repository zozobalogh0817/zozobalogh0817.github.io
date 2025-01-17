---
layout: page
title: Quick Start Guide
options: { toc: true, menuItem: true, archived: false }
---

# The main idea

This theme was made to create a documentation through a simple `GitHub Pages` with `Markdown` files
like ***vuepress***

# Installation

1. Create an **Empty GitHub Project**
2. Add `_config.yml` in the root folder
3. Add the following required properties to use the theme and set up

## Required settings
These properties ***required*** to be set otherwise the theme will misbehave

```yaml
title: YOUR_DOCS_TITLE
remote_theme: zozobalogh0817/wiki-theme # <- this is the master branch of this repo must be set to use this theme
url: 'https://YOUR_GITHUB_USERNAME.github.io/'
path: 'https://YOUR_GITHUB_USERNAME.github.io/'
settings: {
  home: YOUR_HOME_URI # example : "/home" -> this indicates index.md
}
```

# Optional properties

`Author` in order to set you as author

```yaml
author:
  name: YOUR_NAME
```

`Exclude` in order to exclude some `Markdown` from translating

```yaml
exclude:
  - YOUR_MD_FILE.md
```

`Settings` in order to add extra functionality to your documentation **GitHub Pages**

```yaml
settings: {
  # Basic section
  redirectTimeOut: REDIRECT_TIMEOUT # if not set it will be 0,
    private: IS_REPO_OPENSOURCE # if not set it set false (if this value true the docs pages are editable with a GH link),
    # END #

    # Header section
    hasHeader: IS_SITE_HAS_HEADER # if set true the page will have a header,
    # END #

    # Contact section
    contactUs: {
      ownerName: YOUR_NAME,
      supportEmail: YOUR_EMAIL
    },
  # END #

  # Developer Tools Section
  devTool: {
    key: YOUR_KEY_TO_ACTIVATE_DEVELOPER_TOOL # developer tool is coming soon
  }
}
```

# Structure
The following repository structure
```
    |- _config.yml
    |- index.md
    |- page1.md
    |- page
    |-- page2.md
```    
## Routes
Will produce the following routes

`/` < index.md

`/page1` < page1.md

`/page/page2` < page/page2.md


# Pages
Pages can be different types with different settings

## Page extensions
Pages can be file type `.md` or `.html`

## Page header

```markdown
---
layout: TYPE_OF_LAYOUT
title: TITLE_OF_PAGE
options: { toc: IS_PAGE_HAS_TABLE_OF_CONTENT, menuItem: IS_MENU_ITEM, archived: IS_PAGE_ARCHIVED }
---
```

### Layout types
Layout can be `page`. 
**Other types will come soon**

### Page options

Other documentation will come soon
