
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_get_property_cookie_t ;
typedef int * gpointer ;
struct TYPE_5__ {int last_timestamp; int ewmh; int screen_nbr; int sndisplay; } ;
struct TYPE_4__ {int command; int * wmclass; int * app_id; int * icon; int * binary; int description; int name; } ;
typedef int SnLauncherContext ;
typedef TYPE_1__ RofiHelperExecuteContext ;
typedef scalar_t__ GSpawnChildSetupFunc ;


 int sn_launcher_context_initiate (int *,char*,int ,int ) ;
 int * sn_launcher_context_new (int ,int ) ;
 int sn_launcher_context_set_application_id (int *,int *) ;
 int sn_launcher_context_set_binary_name (int *,int *) ;
 int sn_launcher_context_set_description (int *,int ) ;
 int sn_launcher_context_set_icon_name (int *,int *) ;
 int sn_launcher_context_set_name (int *,int ) ;
 int sn_launcher_context_set_wmclass (int *,int *) ;
 int sn_launcher_context_set_workspace (int *,unsigned int) ;
 scalar_t__ sn_launcher_context_setup_child_process ;
 TYPE_2__* xcb ;
 int xcb_ewmh_get_current_desktop (int *,int ) ;
 scalar_t__ xcb_ewmh_get_current_desktop_reply (int *,int ,unsigned int*,int *) ;

void display_startup_notification ( RofiHelperExecuteContext *context, GSpawnChildSetupFunc *child_setup, gpointer *user_data )
{
    if ( context == ((void*)0) ) {
        return;
    }

    SnLauncherContext *sncontext;

    sncontext = sn_launcher_context_new ( xcb->sndisplay, xcb->screen_nbr );

    sn_launcher_context_set_name ( sncontext, context->name );
    sn_launcher_context_set_description ( sncontext, context->description );
    if ( context->binary != ((void*)0) ) {
        sn_launcher_context_set_binary_name ( sncontext, context->binary );
    }
    if ( context->icon != ((void*)0) ) {
        sn_launcher_context_set_icon_name ( sncontext, context->icon );
    }
    if ( context->app_id != ((void*)0) ) {
        sn_launcher_context_set_application_id ( sncontext, context->app_id );
    }
    if ( context->wmclass != ((void*)0) ) {
        sn_launcher_context_set_wmclass ( sncontext, context->wmclass );
    }

    xcb_get_property_cookie_t c;
    unsigned int current_desktop = 0;

    c = xcb_ewmh_get_current_desktop ( &xcb->ewmh, xcb->screen_nbr );
    if ( xcb_ewmh_get_current_desktop_reply ( &xcb->ewmh, c, &current_desktop, ((void*)0) ) ) {
        sn_launcher_context_set_workspace ( sncontext, current_desktop );
    }

    sn_launcher_context_initiate ( sncontext, "rofi", context->command, xcb->last_timestamp );

    *child_setup = (GSpawnChildSetupFunc) sn_launcher_context_setup_child_process;
    *user_data = sncontext;
}
