
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_get_property_cookie_t ;
struct TYPE_5__ {scalar_t__ strings_len; int strings; } ;
typedef TYPE_1__ xcb_ewmh_get_utf8_strings_reply_t ;
struct TYPE_6__ {int ewmh; } ;


 int WM_DO_NOT_CHANGE_CURRENT_DESKTOP ;
 int WM_PANGO_WORKSPACE_NAMES ;
 int current_window_manager ;
 int g_debug (char*,int ) ;
 scalar_t__ g_strcmp0 (int ,char*) ;
 TYPE_4__* xcb ;
 scalar_t__ xcb_ewmh_get_supporting_wm_check_reply (int *,int ,int *,int *) ;
 int xcb_ewmh_get_supporting_wm_check_unchecked (int *,int ) ;
 int xcb_ewmh_get_utf8_strings_reply_wipe (TYPE_1__*) ;
 scalar_t__ xcb_ewmh_get_wm_name_reply (int *,int ,TYPE_1__*,void*) ;
 int xcb_ewmh_get_wm_name_unchecked (int *,int ) ;
 int xcb_stuff_get_root_window () ;

__attribute__((used)) static void x11_helper_discover_window_manager ( void )
{
    xcb_window_t wm_win = 0;
    xcb_get_property_cookie_t cc = xcb_ewmh_get_supporting_wm_check_unchecked ( &xcb->ewmh,
                                                                                    xcb_stuff_get_root_window () );

    if ( xcb_ewmh_get_supporting_wm_check_reply ( &xcb->ewmh, cc, &wm_win, ((void*)0) ) ) {
        xcb_ewmh_get_utf8_strings_reply_t wtitle;
        xcb_get_property_cookie_t cookie = xcb_ewmh_get_wm_name_unchecked ( &( xcb->ewmh ), wm_win );
        if ( xcb_ewmh_get_wm_name_reply ( &( xcb->ewmh ), cookie, &wtitle, (void *) 0 ) ) {
            if ( wtitle.strings_len > 0 ) {
                g_debug ( "Found window manager: %s", wtitle.strings );
                if ( g_strcmp0 ( wtitle.strings, "i3" ) == 0 ) {
                    current_window_manager = WM_DO_NOT_CHANGE_CURRENT_DESKTOP | WM_PANGO_WORKSPACE_NAMES;
                }
            }
            xcb_ewmh_get_utf8_strings_reply_wipe ( &wtitle );
        }
    }
}
