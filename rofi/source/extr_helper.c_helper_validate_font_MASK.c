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
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  PangoFontDescription ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

gboolean FUNC3 ( PangoFontDescription *pfd, const char *font )
{
    const char *fam = FUNC1 ( pfd );
    int        size = FUNC2 ( pfd );
    if ( fam == NULL || size == 0 ) {
        FUNC0 ( "Pango failed to parse font: '%s'", font );
        FUNC0 ( "Got family: <b>%s</b> at size: <b>%d</b>", fam ? fam : "{unknown}", size );
        return FALSE;
    }
    return TRUE;
}