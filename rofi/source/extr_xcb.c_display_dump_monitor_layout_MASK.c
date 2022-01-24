#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int monitor_id; char* name; int x; int y; int w; int h; scalar_t__ mw; scalar_t__ mh; scalar_t__ primary; struct TYPE_3__* next; } ;
typedef  TYPE_1__ workarea ;
struct TYPE_4__ {TYPE_1__* monitors; } ;

/* Variables and functions */
 char* color_bold ; 
 char* color_reset ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 TYPE_2__* xcb ; 

void FUNC3 ( void )
{
    int is_term = FUNC1 ( FUNC0 ( stdout ) );
    FUNC2 ( "Monitor layout:\n" );
    for ( workarea *iter = xcb->monitors; iter; iter = iter->next ) {
        FUNC2 ( "%s              ID%s: %d", ( is_term ) ? color_bold : "", is_term ? color_reset : "", iter->monitor_id );
        if ( iter->primary ) {
            FUNC2 ( " (primary)" );
        }
        FUNC2 ( "\n" );
        FUNC2 ( "%s            name%s: %s\n", ( is_term ) ? color_bold : "", is_term ? color_reset : "", iter->name );
        FUNC2 ( "%s        position%s: %d,%d\n", ( is_term ) ? color_bold : "", is_term ? color_reset : "", iter->x, iter->y );
        FUNC2 ( "%s            size%s: %d,%d\n", ( is_term ) ? color_bold : "", is_term ? color_reset : "", iter->w, iter->h );
        if ( iter->mw > 0 && iter->mh > 0 ) {
            FUNC2 ( "%s            size%s: %dmm,%dmm  dpi: %.0f,%.0f\n",
                     ( is_term ) ? color_bold : "",
                     is_term ? color_reset : "",
                     iter->mw,
                     iter->mh,
                     iter->w * 25.4 / (double) iter->mw,
                     iter->h * 25.4 / (double) iter->mh
                     );
        }
        FUNC2 ( "\n" );
    }
}