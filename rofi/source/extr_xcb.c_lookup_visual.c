
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ visual_id; } ;
typedef TYPE_1__ xcb_visualtype_t ;
struct TYPE_10__ {TYPE_1__* data; scalar_t__ rem; } ;
typedef TYPE_2__ xcb_visualtype_iterator_t ;
typedef scalar_t__ xcb_visualid_t ;
typedef int xcb_screen_t ;
struct TYPE_11__ {int data; scalar_t__ rem; } ;
typedef TYPE_3__ xcb_depth_iterator_t ;


 int xcb_depth_next (TYPE_3__*) ;
 TYPE_2__ xcb_depth_visuals_iterator (int ) ;
 TYPE_3__ xcb_screen_allowed_depths_iterator (int *) ;
 int xcb_visualtype_next (TYPE_2__*) ;

__attribute__((used)) static xcb_visualtype_t * lookup_visual (xcb_screen_t *s, xcb_visualid_t visual)
{
    xcb_depth_iterator_t d;
    d = xcb_screen_allowed_depths_iterator (s);
    for (; d.rem; xcb_depth_next (&d)) {
        xcb_visualtype_iterator_t v = xcb_depth_visuals_iterator (d.data);
        for (; v.rem; xcb_visualtype_next (&v)) {
            if (v.data->visual_id == visual)
                return v.data;
        }
    }
    return 0;
}
