-- Build configuration for xcolor-nyu
-- Matthew Leingang, 2019-12-10

bundle = "Gotham"
bundleversion = "0.10.8"
bundledate    = "2022-08-10"
module = "xcolor-nyu22"

maindir = ".."
typesetfiles = {"*.tex", "examples/*.tex"}
typesetsuppfiles = {"*.png", "*.bib"}
supportdir = "support"
typesetexe = "lualatex"

-- Root directory of the TDS structure for the module to be installed into.
-- Mentally prepend the path to the correct texmf tree THEN either "tex" (for
-- includes), "doc" (for documentation), or "source" (for source files).
-- tdsroot = "latex"

-- The "luatex" engine produces some very minor differences (like, a single
-- space in a \kern line).  One way around that is to disable the luatex engine:
-- (uncomment to activate)
--
-- checkengines = { "pdftex", "xetex" }
--
-- Another way is to save test logs twice (on command line)
--
--     $ l3build save test
--     $ l3build save -e luatex test
--
-- This creates both "test.tlg" and "test.luatex.tlg" in testfiles.
-- Engine-specific tlg files are only compared with the specific engines.

dofile(maindir .. "/build-config.lua")

kpse.set_program_name("texlua")
if not release_date then
   dofile(kpse.lookup("l3build.lua"))
end
