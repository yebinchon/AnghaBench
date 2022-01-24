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
typedef  int /*<<< orphan*/  type_t ;
typedef  int /*<<< orphan*/  statement_list_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ do_everything ; 
 int /*<<< orphan*/  do_regscript ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  indent ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  output_buffer ; 
 scalar_t__ output_buffer_pos ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  regscript_name ; 
 int /*<<< orphan*/  regscript_token ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*) ; 

void FUNC14( const statement_list_t *stmts )
{
    const type_t *ps_factory;

    if (!do_regscript) return;
    if (do_everything && !FUNC8( stmts )) return;

    FUNC7();

    FUNC9( indent, "HKCR\n" );
    FUNC9( indent++, "{\n" );

    FUNC9( indent, "NoRemove Interface\n" );
    FUNC9( indent++, "{\n" );
    ps_factory = FUNC3( stmts );
    if (ps_factory) FUNC12( stmts, ps_factory );
    FUNC9( --indent, "}\n" );

    FUNC9( indent, "NoRemove CLSID\n" );
    FUNC9( indent++, "{\n" );
    FUNC11( stmts, NULL );
    FUNC9( --indent, "}\n" );

    FUNC13( stmts );
    FUNC9( --indent, "}\n" );

    if (FUNC10( regscript_name, ".res" ))  /* create a binary resource file */
    {
        FUNC0( "WINE_REGISTRY", regscript_token );
        FUNC4( regscript_name );
    }
    else
    {
        FILE *f = FUNC5( regscript_name, "w" );
        if (!f) FUNC1( "Could not open %s for output\n", regscript_name );
        if (FUNC6( output_buffer, 1, output_buffer_pos, f ) != output_buffer_pos)
            FUNC1( "Failed to write to %s\n", regscript_name );
        if (FUNC2( f ))
            FUNC1( "Failed to write to %s\n", regscript_name );
    }
}