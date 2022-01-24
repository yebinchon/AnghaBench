#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_get_property_cookie_t ;
typedef  int /*<<< orphan*/ * gpointer ;
struct TYPE_5__ {int /*<<< orphan*/  last_timestamp; int /*<<< orphan*/  ewmh; int /*<<< orphan*/  screen_nbr; int /*<<< orphan*/  sndisplay; } ;
struct TYPE_4__ {int /*<<< orphan*/  command; int /*<<< orphan*/ * wmclass; int /*<<< orphan*/ * app_id; int /*<<< orphan*/ * icon; int /*<<< orphan*/ * binary; int /*<<< orphan*/  description; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  SnLauncherContext ;
typedef  TYPE_1__ RofiHelperExecuteContext ;
typedef  scalar_t__ GSpawnChildSetupFunc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ sn_launcher_context_setup_child_process ; 
 TYPE_2__* xcb ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ; 

void FUNC11 ( RofiHelperExecuteContext *context, GSpawnChildSetupFunc *child_setup, gpointer *user_data )
{
    if ( context == NULL ) {
        return;
    }

    SnLauncherContext *sncontext;

    sncontext = FUNC1 ( xcb->sndisplay, xcb->screen_nbr );

    FUNC6 ( sncontext, context->name );
    FUNC4 ( sncontext, context->description );
    if ( context->binary != NULL ) {
        FUNC3 ( sncontext, context->binary );
    }
    if ( context->icon != NULL ) {
        FUNC5 ( sncontext, context->icon );
    }
    if ( context->app_id != NULL ) {
        FUNC2 ( sncontext, context->app_id );
    }
    if ( context->wmclass != NULL ) {
        FUNC7 ( sncontext, context->wmclass );
    }

    xcb_get_property_cookie_t c;
    unsigned int              current_desktop = 0;

    c = FUNC9 ( &xcb->ewmh, xcb->screen_nbr );
    if ( FUNC10 ( &xcb->ewmh, c, &current_desktop, NULL ) ) {
        FUNC8 ( sncontext, current_desktop );
    }

    FUNC0 ( sncontext, "rofi", context->command, xcb->last_timestamp );

    *child_setup = (GSpawnChildSetupFunc) sn_launcher_context_setup_child_process;
    *user_data   = sncontext;
}