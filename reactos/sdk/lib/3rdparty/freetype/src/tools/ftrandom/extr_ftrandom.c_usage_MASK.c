#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char** default_dir_list ; 
 char** default_ext_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
  FUNC1( FILE*  out,
         char*  name )
  {
    char**  d = default_dir_list;
    char**  e = default_ext_list;


    FUNC0( out, "%s [options] -- Generate random erroneous fonts\n"
                  "  and attempt to parse them with FreeType.\n\n", name );

    FUNC0( out, "  --all                    All non-directory files are assumed to be fonts.\n" );
    FUNC0( out, "  --check-outlines         Make sure we can parse the outlines of each glyph.\n" );
    FUNC0( out, "  --dir <path>             Append <path> to list of font search directories\n"
                  "                           (no recursive search).\n" );
    FUNC0( out, "  --error-count <cnt>      Introduce <cnt> single byte errors into each font\n"
                  "                           (default: 1)\n" );
    FUNC0( out, "  --error-fraction <frac>  Introduce <frac>*filesize single byte errors\n"
                  "                           into each font (default: 0.0).\n" );
    FUNC0( out, "  --ext <ext>              Add <ext> to list of extensions indicating fonts.\n" );
    FUNC0( out, "  --help                   Print this.\n" );
    FUNC0( out, "  --nohints                Turn off hinting.\n" );
    FUNC0( out, "  --rasterize              Attempt to rasterize each glyph.\n" );
    FUNC0( out, "  --results <path>         Place the created test fonts into <path>\n"
                  "                           (default: `results')\n" );
    FUNC0( out, "  --size <float>           Use the given font size for the tests.\n" );
    FUNC0( out, "  --test <file>            Run a single test on an already existing file.\n" );
    FUNC0( out, "\n" );

    FUNC0( out, "Default font extensions:\n" );
    FUNC0( out, " " );
    while ( *e )
      FUNC0( out, " .%s", *e++ );
    FUNC0( out, "\n" );

    FUNC0( out, "Default font directories:\n" );
    FUNC0( out, " " );
    while ( *d )
      FUNC0( out, " %s", *d++ );
    FUNC0( out, "\n" );
  }