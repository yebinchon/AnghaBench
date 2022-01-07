
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ rem; TYPE_1__* data; } ;
typedef TYPE_2__ xcb_xinerama_screen_info_iterator_t ;
typedef int xcb_xinerama_query_screens_reply_t ;
typedef int xcb_xinerama_query_screens_cookie_t ;
struct TYPE_10__ {int monitor_id; struct TYPE_10__* next; int h; int w; int y; int x; } ;
typedef TYPE_3__ workarea ;
struct TYPE_11__ {TYPE_3__* monitors; int connection; } ;
struct TYPE_8__ {int height; int width; int y_org; int x_org; } ;


 int free (int *) ;
 TYPE_3__* g_malloc0 (int) ;
 TYPE_6__* xcb ;
 int * xcb_xinerama_query_screens_reply (int ,int ,int *) ;
 TYPE_2__ xcb_xinerama_query_screens_screen_info_iterator (int *) ;
 int xcb_xinerama_query_screens_unchecked (int ) ;
 int xcb_xinerama_screen_info_next (TYPE_2__*) ;

__attribute__((used)) static void x11_build_monitor_layout_xinerama ()
{
    xcb_xinerama_query_screens_cookie_t screens_cookie = xcb_xinerama_query_screens_unchecked (
        xcb->connection
        );

    xcb_xinerama_query_screens_reply_t *screens_reply = xcb_xinerama_query_screens_reply (
        xcb->connection,
        screens_cookie,
        ((void*)0)
        );

    xcb_xinerama_screen_info_iterator_t screens_iterator = xcb_xinerama_query_screens_screen_info_iterator (
        screens_reply
        );

    for (; screens_iterator.rem > 0; xcb_xinerama_screen_info_next ( &screens_iterator ) ) {
        workarea *w = g_malloc0 ( sizeof ( workarea ) );

        w->x = screens_iterator.data->x_org;
        w->y = screens_iterator.data->y_org;
        w->w = screens_iterator.data->width;
        w->h = screens_iterator.data->height;

        w->next = xcb->monitors;
        xcb->monitors = w;
    }

    int index = 0;
    for ( workarea *iter = xcb->monitors; iter; iter = iter->next ) {
        iter->monitor_id = index++;
    }

    free ( screens_reply );
}
