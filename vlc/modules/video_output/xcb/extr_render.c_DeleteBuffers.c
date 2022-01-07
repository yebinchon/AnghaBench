
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_connection_t ;
struct TYPE_8__ {TYPE_4__* sys; } ;
typedef TYPE_3__ vout_display_t ;
struct TYPE_7__ {int crop; int scale; } ;
struct TYPE_6__ {int crop; int scale; } ;
struct TYPE_9__ {TYPE_2__ drawable; TYPE_1__ picture; int * conn; } ;
typedef TYPE_4__ vout_display_sys_t ;


 int xcb_free_pixmap (int *,int ) ;
 int xcb_render_free_picture (int *,int ) ;

__attribute__((used)) static void DeleteBuffers(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    xcb_connection_t *conn = sys->conn;

    xcb_render_free_picture(conn, sys->picture.scale);
    xcb_render_free_picture(conn, sys->picture.crop);
    xcb_free_pixmap(conn, sys->drawable.scale);
    xcb_free_pixmap(conn, sys->drawable.crop);
}
