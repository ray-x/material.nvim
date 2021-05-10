local material = {
  -- Common colors

  white = "#EEFFFF",
  gray = "#717CB4",
  black = "#000000",
  red = "#F07178",
  green = "#C3E88D",
  --lime =		'#98EE64',
  yellow = "#FFCB6B",
  blue = "#82AAFF",
  paleblue = "#B0C9FF",
  cyan = "#89DDFF",
  purple = "#C792EA",
  --violet =		'#B66FFD',
  orange = "#F78C6C",
  pink = "#FF9CAC",
  error = "#FF5370",
  link = "#80CBC4",
  cursor = "#FFCC00",
  none = "NONE"
}
local material_moonlight = {
  -- Common colors

  white = "#EEFFFF",
  gray = "#a1abe0",
  black = "#000000",
  red = "#ff757f",
  green = "#2df4c0",
  --lime =		'#98EE64',
  yellow = "#ffc777",
  paleblue = "#d6e7f0",
  cyan = "#a3ace2",
  blue = "#04d1f9",
  purple = "#b4a4f4",
  --violet =		'#B66FFD',
  orange = "#f67f81",
  pink = "#ecb2f0",
  error = "#FF5370",
  link = "#80CBC4",
  cursor = "#5cb4fc",
  none = "NONE"
}
-- Style specific colors

if vim.g.material_style == "darker" then
  -- Darker theme style

  material.bg = "#212121"
  material.bg_alt = "#1A1A1A"
  material.fg = "#B0BEC5"
  material.text = "#727272"
  material.comments = "#616161"
  material.selection = "#404040"
  material.contrast = "#1A1A1A"
  material.active = "#323232"
  material.border = "#292929"
  material.line_numbers = "#424242"
  material.highlight = "#3F3F3F"
  material.disabled = "#474747"
  material.accent = "#FF9800"
elseif vim.g.material_style == "lighter" then
  -- Lighter theme style

  material.bg = "#FAFAFA"
  material.bg_alt = "#FFFFFF"
  material.fg = "#546E7A"
  material.text = "#94A7B0"
  material.comments = "#AABFC9"
  material.selection = "#80CBC4"
  material.contrast = "#EEEEEE"
  material.active = "#E7E7E8"
  material.border = "#D3E1E8"
  material.line_numbers = "#CFD8DC"
  material.highlight = "#E7E7E8"
  material.disabled = "#D2D4D5"
  material.cursor = "#272727"
  material.accent = "#00BCD4"

  material.white = "#FFFFFF"
  material.gray = "#717CB4"
  material.black = "#000000"
  material.red = "#E53935"
  material.green = "#91B859"
  material.yellow = "#F6A434"
  material.blue = "#6182B8"
  material.paleblue = "#8796B0"
  material.cyan = "#39ADB5"
  material.purple = "#7C4DFF"
  material.orange = "#F76D47"
  material.pink = "#FF5370"
elseif vim.g.material_style == "palenight" then
  -- Palenight theme style

  material.bg = "#292D3E"
  material.bg_alt = "#1B1E2B"
  material.fg = "#A6ACCD"
  material.text = "#676E95"
  material.comments = "#676E95"
  material.selection = "#717CB4"
  material.contrast = "#202331"
  material.active = "#414863"
  material.border = "#414863"
  material.line_numbers = "#3A3F58"
  material.highlight = "#444267"
  material.disabled = "#515772"
  material.accent = "#AB47BC"
elseif vim.g.material_style == "deep ocean" then
  -- Deep Ocean theme style

  material.bg = "#0F111A"
  material.bg_alt = "#090B10"
  material.fg = "#8F93A2"
  material.text = "#717CB4"
  material.comments = "#464B5D"
  material.selection = "#1F2233"
  material.contrast = "#090B10"
  material.active = "#1A1C25"
  material.border = "#1f2233"
  material.line_numbers = "#3B3F51"
  material.highlight = "#1F2233"
  material.disabled = "#464B5D"
  material.accent = "#84FFFF"
else
  vim.g.material_style = "oceanic"
  -- Oceanic theme style

  material.bg = "#263238"
  material.bg_alt = "#192227"
  material.fg = "#B0BEC5"
  material.text = "#607D8B"
  material.comments = "#464B5D"
  material.selection = "#546E7A"
  material.contrast = "#1E272C"
  material.active = "#314549"
  material.border = "#2A373E"
  material.line_numbers = "#37474F"
  material.highlight = "#425B67"
  material.disabled = "#415967"
  material.accent = "#009688"
end

if vim.g.material_style == "moonlight" then
  -- Palenight theme style
  vim.tbl_extend("force", material, material_moonlight)
  material.bg = "#212539"
  material.bg_alt = "#1B1E2B"
  material.fg = "#e4f3fa"
  material.text = "#757dac"
  material.comments = "#7486d6"
  material.selection = "#403c64"
  material.contrast = "#1b1d2c"
  material.active = "#414863"
  material.border = "#414863"
  material.line_numbers = "#5b6395"
  material.highlight = "#a1abe0"
  material.disabled = "#515772"
  material.accent = "#a3ace1"
end

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.material_contrast == false then
  material.sidebar = material.bg
  material.float = material.bg
else
  material.sidebar = material.bg_alt
  material.float = material.bg_alt
end

return material
