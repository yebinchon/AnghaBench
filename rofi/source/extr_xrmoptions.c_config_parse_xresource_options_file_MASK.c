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
typedef  int /*<<< orphan*/  xcb_xrm_database_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

void FUNC4 ( const char *filename )
{
    if ( !filename ) {
        return;
    }
    // Map Xresource entries to rofi config options.
    xcb_xrm_database_t *xDB = FUNC3 ( filename );
    if ( xDB == NULL ) {
        return;
    }
    FUNC0 ( xDB, CONFIG_FILE );
    FUNC1 ( xDB, CONFIG_FILE );
    FUNC2 ( xDB );
}