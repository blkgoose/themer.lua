local colors = {
    bg = "#2e3440",
    fg = "#E5E9F0",
    bg_alt = "#2b2e36",
    bg_float = "#3B4048",
    inactive = "#4C566A",
    subtle = "#4c566a",
    red = "#d94848",
    yellow = "#d4d198",
    orange = "#d08770",
    blue = "#5d8ac2",
    green = "#98C379",
    magenta = "#c487b9",
    highlight = "#434c5e",
    highlight_overlay = "#434c5e",
    highlight_inactive = "#3e4452",
    comment = "#699856",
    light_blue = "#8fc6e3",
    cyan = "#4EC9B0",
    vertsplit = "#373e4a",
    number = "#B4CDA8",
    string = "#A3BE8C",
    line_number = "#4C566A",
    line_color = "#3B4252",
    visual_grey = "#3E4452",
    interface_color = "#84D9AA",
}

local color_palette = {
    red = colors.red,
    yellow = colors.yellow,
    orange = colors.orange,
    magenta = colors.magenta,
    blue = colors.blue,
    green = colors.green,
    cyan = colors.cyan,

    -- The new shiny boy
    fg = colors.fg,
    diff = {
        add = colors.green,
        remove = colors.red,
        text = colors.blue,
        change = colors.yellow,
    },
    accent = colors.blue,
    search_result = { fg = colors.magenta, bg = colors.bg, telescope = colors.blue },
    match = colors.fg,
    dimmed = {
        inactive = colors.inactive,
        subtle = colors.subtle,
    },
    bg = {
        base = colors.bg,
        alt = colors.bg_alt,
        selected = colors.line_color,
    },
    border = colors.blue,
    syntax = {
        ["function"] = colors.blue,
        variable = colors.red,
        include = colors.red,
        keyword = colors.blue,
        struct = colors.red,
        string = colors.string,
        field = colors.light_blue,
        parameter = colors.light_blue,
        property = colors.yellow,
        punctuation = colors.blue,
        constructor = colors.interface_color,
        operator = colors.blue,
        preproc = colors.red,
        constant = colors.blue,
        todo = { fg = colors.bg, bg = colors.yellow },
        number = colors.number,
        comment = colors.comment,
        type = colors.red,
    },
    built_in = {
        ["function"] = colors.yellow,
        type = colors.yellow,
        variable = colors.light_blue,
        keyword = colors.blue,
        constant = colors.blue,
    },
    diagnostic = {
        error = colors.red,
        warn = colors.yellow,
        info = colors.red,
        hint = colors.blue,
    },
    uri = colors.red,
    pum = {
        fg = colors.line_color,
        bg = colors.bg,
        sbar = colors.visual_grey,
        thumb = colors.fg,
        sel = colors.red,
    },
    heading = {
        h1 = colors.red,
        h2 = colors.red,
    },
}
color_palette.remaps = {
    base = {
        Normal = { fg = colors.fg, bg = colors.bg },
        ColorColumn = { fg = colors.red },
        CursorLine = { bg = colors.line_color },
        Directory = { fg = colors.blue },
        EndOfBuffer = { fg = colors.bg },
        ErrorMsg = { fg = colors.fg, bg = colors.red },
        VertSplit = { fg = colors.vertsplit },
        Folded = { fg = colors.comment },
        IncSearch = { fg = colors.yellow, bg = colors.comment },
        MatchParen = { fg = colors.fg, bg = colors.blue },
        NonText = { fg = colors.blue },
        Pmenu = { fg = colors.line_color },
        PmenuSbar = { fg = colors.visual_grey },
        PmenuSel = { bg = colors.visual_grey },
        PmenuThumb = { fg = colors.fg },
        Search = { bg = colors.blue },
        TabLine = { fg = colors.comment },
        TabLineSel = { fg = colors.fg },
        TabLineFill = { bg = colors.bg },
        Visual = { bg = colors.visual_grey },
        WarningMsg = { fg = colors.yellow },
        Whitespace = { fg = colors.fg },
        FloatBorder = { fg = colors.fg },
        Constant = { fg = colors.blue },
        Character = { link = "String" },
        Number = { fg = colors.number },
        Boolean = { link = "Constant" },
        Float = { link = "Number" },

        Identifier = { fg = colors.light_blue },
        Function = { fg = colors.yellow },

        Statement = { fg = colors.blue },

        PreProc = { link = "Statement" },

        Type = { fg = colors.blue },

        Special = { fg = colors.blue },

        Error = { fg = colors.red },

        DiagnosticUnderlineHint = { fg = colors.fg, gui = "undercurl" },
    },
    plugins = {
        treesitter = {
            TSBoolean = { link = "Boolean" },
            TSCharacter = { link = "Character" },
            TSConstant = { link = "Constant" },
            TSError = { link = "Error" },
            TSField = { fg = colors.light_blue },
            TSFunction = { link = "Function" },
            TSFuncBuiltin = { link = "Function" },
            TSFuncMacro = { link = "Function" },
            TSNamespace = { fg = colors.cyan },
            TSType = { fg = colors.cyan },
            TSTypeBuiltin = { fg = colors.blue },
            TSVariable = { link = "TSField" },
            TSProperty = { link = "TSField" },
            TSKeyword = { fg = colors.blue },
            TSPunctBracket = { fg = colors.blue },
            TSConstructor = { fg = colors.blue },
            TSMethod = { link = "Function" },
            TSKeywordFunction = { link = "Keyword" },
            TSConditional = { link = "Keyword" },
            TSConstBuiltin = { link = "Keyword" },
            TSInclude = { link = "Keyword" },
            TSVariableBuiltin = { link = "Keyword" },
            TSTag = { link = "Keyword" },
            TSTitle = { link = "String" },
            TSLabel = { link = "String" },
        },

        gitsigns = {
            GitSignsChange = { fg = colors.yellow, bg = colors.bg },
        },

        cmp = {
            CmpItemKind = { fg = colors.blue },
        },

        trouble = {
            TroubleSignError = { fg = colors.red },
            TroubleSignWarning = { fg = colors.yellow },
        },

        nvim_tree = {
            NvimTreeRootFolder = { fg = colors.light_blue },
            NvimTreeFileDeleted = { fg = colors.red },
            NvimTreeGitDeleted = { fg = colors.red },
            NvimTreeGitDirty = { fg = colors.yellow },
        },

        telescope = {
            TelescopeSelection = { bg = colors.highlight_overlay },
            TelescopeMatching = { fg = colors.blue },
            TelescopeBorder = { fg = colors.bg_alt, bg = colors.bg_alt },
            TelescopePromptPrefix = { fg = colors.blue, bg = colors.bg_alt },
            TelescopeResultsTitle = { fg = colors.bg_alt, bg = colors.blue },
            TelescopePreviewTitle = { fg = colors.bg_alt, bg = colors.green },
            TelescopePromptTitle = { fg = colors.bg_alt, bg = colors.yellow },
            TelescopePreviewNormal = { bg = colors.bg_alt },
            TelescopeResultsNormal = { bg = colors.bg_alt },
            TelescopePromptNormal = { fg = colors.fg, bg = colors.bg_alt },
            TelescopePromptBorder = { fg = colors.bg, bg = colors.bg_alt },
            TelescopeSelectionCaret = { fg = colors.bg_alt, bg = colors.bg_alt },
        },
    },

    langs = { md = { markdownCode = { fg = colors.string } } },
}

return color_palette
