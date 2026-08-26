#asset("liberapay-donate-button.svg", read("static/images/liberapay-donate-button.svg", encoding: none))
#asset("matrix-chat-button.svg", read("static/images/matrix-chat-button.svg", encoding: none))
#asset("paypal-donate-button.png", read("static/images/paypal-donate-button.png", encoding: none))
#asset("rnote-devel.svg", read("static/images/rnote-devel.svg", encoding: none))
#asset("rnote-symbolic.svg", read("static/images/rnote-symbolic.svg", encoding: none))
#asset("rnote.svg", read("static/images/rnote.svg", encoding: none))
#asset(".nojekyll", read("static/.nojekyll"))
#asset("CNAME", read("static/CNAME"))
#asset("favicon.png", read("static/favicon.png", encoding: none))
#asset("style.css", read("static/style.css"))

#let rnote_title = [Rnote: Sketch and take handwritten notes]
#let site_head() = html.head[
  #html.title(rnote_title)
  #html.link(rel: "stylesheet", href: "/style.css")
  #html.link(rel: "icon", href: "/favicon.png")
  #html.meta(name: "viewport", content: "width=device-width, initial-scale=1.0")
]
#let site_header() = html.header[
  #html.div[
    #html.img(src: "/rnote.svg", class: "drop_shadow", style: "height: 8.0em; float: left; padding-right: 1em;")
    #html.h1(rnote_title)
  ]
  #html.div[
    #link(<support>)[Support]
    #link("https://hosted.weblate.org/engage/rnote/")[Help Translate]
    #link("https://github.com/flxzt/rnote")[Repository]
    #link(
      "https://flathub.org/apps/details/com.github.flxzt.rnote",
      html.img(
        style: "width: 150px;",
        alt: "Get it on Flathub button",
        src: "https://raw.githubusercontent.com/flxzt/rnote/main/misc/assets/flathub-badge.svg",
      ),
    )
  ]
]
#let site_footer() = html.footer[
  Felix Zwettler

  \-

  #link("https://github.com/flxzt")

  \-

  #link("http://creativecommons.org/licenses/by-sa/4.0/", html.img(
    alt: "CC BY-SA 4.0",
    style: "border-width:0",
    src: "https://i.creativecommons.org/l/by-sa/4.0/80x15.png",
  ))

  \-

  Crafted with #link("https://typst.app/docs/reference/html/")[Typst], \
  Inspired by #link("https://johnfactotum.github.io/foliate/")[Foliate]

  \-

  (c) 2026
]

#document("index.html", html.html[
  #site_head()
  #site_header()
  #html.main[
    *Rnote* is an open-source vector-based drawing app for sketching, handwritten notes and to annotate
    documents and pictures.
    It is targeted at students, teachers and those who own a drawing tablet and provides features like Pdf and
    picture import and export,
    an infinite canvas and an adaptive UI for big and small screens.

    *Disclaimer:*
    The file format is still unstable. It might change and break compatibility between versions.

    = Features
    - Adaptive UI focused on stylus input
    - Pressure-sensitive stylus input with different and configurable stroke styles
    - Create many different shapes with the shape tool
    - Move, rotate, resize and modify existing content with the selection tool
    - Different document expansion layouts ( fixed pages, continuous vertical, infinite in every direction, .. )
    - Customizable background colors, patterns, sizes
    - Customizable page format
    - (Optional) pen sounds
    - Reconfigurable stylus button shortcuts
    - An integrated workspace browser for quick access to related files
    - Drag & Drop, clipboard support
    - PDF, Bitmap and SVG image import
    - Document, document pages and selection export to many formats including SVG, PDF, Xopp
    - Save and load the documents in the native `.rnote` file format
    - Tabs to work on multiple documents at the same time
    - Autosave, printing

    = Screenshots

    #html.div(class: "gallery")[
      #html.img(
        src: "https://raw.githubusercontent.com/flxzt/rnote/main/crates/rnote-ui/data/screenshots/overview.png",
        alt: "overview",
      )
      #html.img(
        src: "https://raw.githubusercontent.com/flxzt/rnote/main/crates/rnote-ui/data/screenshots/selection.png",
        alt: "selection",
      )
      #html.img(
        src: "https://raw.githubusercontent.com/flxzt/rnote/main/crates/rnote-ui/data/screenshots/typewriter.png",
        alt: "typewriter",
      )
      #html.img(
        src: "https://raw.githubusercontent.com/flxzt/rnote/main/crates/rnote-ui/data/screenshots/focus-mode.png",
        alt: "focus-mode",
      )
      #html.img(
        src: "https://raw.githubusercontent.com/flxzt/rnote/main/crates/rnote-ui/data/screenshots/workspaces.png",
        alt: "workspace",
      )
      #html.img(
        src: "https://raw.githubusercontent.com/flxzt/rnote/main/crates/rnote-ui/data/screenshots/document-settings.png",
        alt: "document-settings",
      )
      #html.img(
        src: "https://raw.githubusercontent.com/flxzt/rnote/main/crates/rnote-ui/data/screenshots/action-shortcuts.png",
        alt: "action-shortcuts",
      )
    ]

    = Installation

    #html.div(class: "columns")[
      #html.div[
        *Linux*

        #link("https://flathub.org/apps/details/com.github.flxzt.rnote", html.img(
          style: "height: 50px; float: left; padding-right: 1em;",
          alt: "Get it on Flathub button",
          src: "https://raw.githubusercontent.com/flxzt/rnote/main/misc/assets/flathub-badge.svg",
        ))
        Download the official flatpak on Flathub from #link("https://flathub.org/apps/details/com.github.flxzt.rnote").

      ]

      #html.div[
        *MacOS*

        #link("https://gitlab.com/dehesselle/rnote_macos/-/releases/permalink/latest", html.img(
          style: "height: 50px; float: left; padding-right: 1em;",
          alt: "Download MacOS app bundle",
          src: "https://raw.githubusercontent.com/flxzt/rnote/main/misc/assets/rnote-macos-app-bundle-badge.png",
        ))
        Thanks to #link("https://gitlab.com/dehesselle")[\@dehesselle] the app is available on MacOS as an app bundle.
        The latest release can be downloaded from:
        #link("https://gitlab.com/dehesselle/rnote_macos/-/releases/permalink/latest").

      ]
      #html.div[
        *Windows*

        #link("https://github.com/flxzt/rnote/releases/latest", html.img(
          style: "height: 50px; float: left; padding-right: 1em;",
          alt: "Download Windows installer",
          src: "https://raw.githubusercontent.com/flxzt/rnote/main/misc/assets/windows-installer-badge.svg",
        ))
        Download the Windows installer from the latest release from
        #link("https://github.com/flxzt/rnote/releases/latest").

      ]
    ]


    #html.div(class: "columns")[
      #html.div[
        = Fonts

        The following fonts are bundled with the application:
        - #link("https://fonts.google.com/specimen/Grape+Nuts")[Grape Nuts]: Grape Nuts is a simple handwritten casual font.
        - #link("https://github.com/antijingoist/opendyslexic")[OpenDyslexic-Regular]: OpenDyslexic is a typeface designed against some
          common symptoms of dyslexia.
        - #link("https://github.com/ctrlcctrlv/TT2020")[TT2020Base-Regular]: TT2020 is an advanced, open source, hyperrealistic,
          multilingual typewriter font for a new decade.
        - #link("https://virgil.excalidraw.com/")[Virgil]: The font that powers Excalidraw.
      ]
      #html.div[
        = Open-Source

        Rnote is free software and available under the license
        #link("https://www.gnu.org/licenses/gpl-3.0.html")[GPL-3.0-or-later].

        = Support <support>

        Rnote is mainly developed by a small team of volunteers in their free time.
        Donations go to me, #link("https://blog.flxzt.net/about/")[Felix Zwettler], the original author.
        Donating would mean I could devote more time to the project and to get some extra coffee while developing it
        #emoji.coffee.
        Also, given enough sponsors, I would be able to purchase a linux phone or a mobile drawing tablet such as the
        PineNote to make an effort for porting and optimizing Rnote for those devices.

        There are multiple ways for giving a donation:
        #link("https://github.com/sponsors/flxzt")[Github Sponsors] or #link("https://liberapay.com/flxzt")[Liberapay]
      ]
    ]
  ]
  #site_footer()
])
