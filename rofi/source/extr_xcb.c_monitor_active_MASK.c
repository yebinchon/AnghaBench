#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* xcb_drawable_t ;
struct TYPE_9__ {char* name; scalar_t__ primary; struct TYPE_9__* next; } ;
typedef  TYPE_1__ workarea ;
typedef  scalar_t__ gint64 ;
struct TYPE_11__ {char* monitor; } ;
struct TYPE_10__ {TYPE_1__* monitors; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 TYPE_8__ config ; 
 void* FUNC0 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC5 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (scalar_t__,TYPE_1__*) ; 
 TYPE_2__* xcb ; 

int FUNC8 ( workarea *mon )
{
    if ( config.monitor != NULL ) {
        for ( workarea *iter = xcb->monitors; iter; iter = iter->next ) {
            if ( FUNC2 ( config.monitor, iter->name ) == 0 ) {
                *mon = *iter;
                return TRUE;
            }
        }
    }
    // Grab primary.
    if ( FUNC2 ( config.monitor, "primary" ) == 0 ) {
        for ( workarea *iter = xcb->monitors; iter; iter = iter->next ) {
            if ( iter->primary ) {
                *mon = *iter;
                return TRUE;
            }
        }
    }
    if ( FUNC1 ( config.monitor, "wid:" ) ) {
        char           *end = NULL;
        xcb_drawable_t win  = FUNC0 ( config.monitor + 4, &end, 0 );
        if ( end != config.monitor ) {
            if ( FUNC5 ( win, mon ) ) {
                return TRUE;
            }
        }
    }
    {
        // IF fail, fall back to classic mode.
        char   *end   = NULL;
        gint64 mon_id = FUNC0 ( config.monitor, &end, 0 );
        if ( end != config.monitor ) {
            if ( mon_id >= 0 ) {
                if ( FUNC7 ( mon_id, mon ) ) {
                    return TRUE;
                }
                FUNC3 ( "Failed to find selected monitor." );
            }
            else {
                return FUNC4 ( mon_id, mon );
            }
        }
    }
    // Fallback.
    FUNC6 ( 0, 0, mon );
    return FALSE;
}