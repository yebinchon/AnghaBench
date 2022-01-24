#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_17__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ major_version; scalar_t__ minor_version; scalar_t__ output; } ;
typedef  TYPE_2__ xcb_randr_query_version_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_query_version_cookie_t ;
typedef  scalar_t__ xcb_randr_output_t ;
struct TYPE_24__ {scalar_t__ rem; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ xcb_randr_monitor_info_iterator_t ;
typedef  TYPE_2__ xcb_randr_get_screen_resources_current_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_screen_resources_current_cookie_t ;
typedef  TYPE_2__ xcb_randr_get_output_primary_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_output_primary_cookie_t ;
typedef  TYPE_2__ xcb_randr_get_monitors_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_monitors_cookie_t ;
struct TYPE_25__ {int /*<<< orphan*/  monitor_id; struct TYPE_25__* next; int /*<<< orphan*/  primary; } ;
typedef  TYPE_7__ workarea ;
struct TYPE_22__ {int /*<<< orphan*/  root; } ;
struct TYPE_21__ {TYPE_7__* monitors; int /*<<< orphan*/  connection; TYPE_1__* screen; } ;

/* Variables and functions */
 scalar_t__ RANDR_PREF_MAJOR_VERSION ; 
 scalar_t__ RANDR_PREF_MINOR_VERSION ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ XCB_RANDR_MAJOR_VERSION ; 
 scalar_t__ XCB_RANDR_MINOR_VERSION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_7__* FUNC3 (scalar_t__) ; 
 TYPE_7__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 TYPE_17__* xcb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC12 (TYPE_2__*) ; 
 int FUNC13 (TYPE_2__*) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18 ()
{
    if ( xcb->monitors ) {
        return;
    }
    // If RANDR is not available, try Xinerama
    if ( !FUNC5 ( "RANDR" ) ) {
        // Check if xinerama is available.
        if ( FUNC5 ( "XINERAMA" ) ) {
            FUNC1 ( "Query XINERAMA for monitor layout." );
            FUNC2 ();
            return;
        }
        FUNC1 ( "No RANDR or Xinerama available for getting monitor layout." );
        return;
    }
    FUNC1 ( "Query RANDR for monitor layout." );

    FUNC1 ( "Randr XCB api version: %d.%d.", XCB_RANDR_MAJOR_VERSION, XCB_RANDR_MINOR_VERSION );
#if  ( ( ( XCB_RANDR_MAJOR_VERSION == RANDR_PREF_MAJOR_VERSION ) && ( XCB_RANDR_MINOR_VERSION >= RANDR_PREF_MINOR_VERSION ) ) \
    || XCB_RANDR_MAJOR_VERSION > RANDR_PREF_MAJOR_VERSION  )
    xcb_randr_query_version_cookie_t cversion = FUNC16 ( xcb->connection,
                                                                          RANDR_PREF_MAJOR_VERSION, RANDR_PREF_MINOR_VERSION );
    xcb_randr_query_version_reply_t  *rversion = FUNC17 ( xcb->connection, cversion, NULL );
    if ( rversion ) {
        FUNC1 ( "Found randr version: %d.%d", rversion->major_version, rversion->minor_version );
        // Check if we are 1.5 and up.
        if ( ( ( rversion->major_version == RANDR_PREF_MAJOR_VERSION ) && ( rversion->minor_version >= RANDR_PREF_MINOR_VERSION ) ) ||
             ( rversion->major_version > RANDR_PREF_MAJOR_VERSION ) ) {
            xcb_randr_get_monitors_cookie_t t       = FUNC6 ( xcb->connection, xcb->screen->root, 1 );
            xcb_randr_get_monitors_reply_t  *mreply = FUNC8 ( xcb->connection, t, NULL );
            if ( mreply ) {
                xcb_randr_monitor_info_iterator_t iter = FUNC7 ( mreply );
                while ( iter.rem > 0 ) {
                    workarea *w = FUNC4 ( iter.data );
                    if ( w ) {
                        w->next       = xcb->monitors;
                        xcb->monitors = w;
                    }
                    FUNC15 ( &iter );
                }
                FUNC0 ( mreply );
            }
        }
        FUNC0 ( rversion );
    }
#endif

    // If no monitors found.
    if ( xcb->monitors == NULL ) {
        xcb_randr_get_screen_resources_current_reply_t  *res_reply;
        xcb_randr_get_screen_resources_current_cookie_t src;
        src       = FUNC11 ( xcb->connection, xcb->screen->root );
        res_reply = FUNC14 ( xcb->connection, src, NULL );
        if ( !res_reply ) {
            return;  //just report error
        }
        int                mon_num = FUNC13 ( res_reply );
        xcb_randr_output_t *ops    = FUNC12 ( res_reply );

        // Get primary.
        xcb_randr_get_output_primary_cookie_t pc      = FUNC9 ( xcb->connection, xcb->screen->root );
        xcb_randr_get_output_primary_reply_t  *pc_rep = FUNC10 ( xcb->connection, pc, NULL );

        for ( int i = mon_num - 1; i >= 0; i-- ) {
            workarea *w = FUNC3 ( ops[i] );
            if ( w ) {
                w->next       = xcb->monitors;
                xcb->monitors = w;
                if ( pc_rep && pc_rep->output == ops[i] ) {
                    w->primary = TRUE;
                }
            }
        }
        // If exists, free primary output reply.
        if ( pc_rep ) {
            FUNC0 ( pc_rep );
        }
        FUNC0 ( res_reply );
    }

    // Number monitor
    int index = 0;
    for ( workarea *iter = xcb->monitors; iter; iter = iter->next ) {
        iter->monitor_id = index++;
    }
}