
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xcb_void_cookie_t ;
struct TYPE_15__ {int error_code; } ;
typedef TYPE_4__ xcb_generic_error_t ;
typedef int xcb_connection_t ;
struct TYPE_16__ {TYPE_3__* cfg; TYPE_6__* sys; } ;
typedef TYPE_5__ vout_display_t ;
struct TYPE_12__ {int dest; int scale; } ;
struct TYPE_17__ {TYPE_1__ picture; int * conn; } ;
typedef TYPE_6__ vout_display_sys_t ;
typedef int picture_t ;
struct TYPE_13__ {int height; int width; } ;
struct TYPE_14__ {TYPE_2__ display; } ;


 int XCB_RENDER_PICTURE_NONE ;
 int XCB_RENDER_PICT_OP_SRC ;
 int free (TYPE_4__*) ;
 int msg_Dbg (TYPE_5__*,char*,char*,int ) ;
 int vlc_xcb_Manage (TYPE_5__*,int *) ;
 int xcb_render_composite_checked (int *,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_4__* xcb_request_check (int *,int ) ;

__attribute__((used)) static void Display(vout_display_t *vd, picture_t *pic)
{
    vout_display_sys_t *sys = vd->sys;
    xcb_connection_t *conn = sys->conn;
    xcb_void_cookie_t ck;

    vlc_xcb_Manage(vd, conn);




    ck = xcb_render_composite_checked(conn, XCB_RENDER_PICT_OP_SRC,
                                      sys->picture.scale,
                                      XCB_RENDER_PICTURE_NONE,
                                      sys->picture.dest, 0, 0, 0, 0, 0, 0,
                                      vd->cfg->display.width,
                                      vd->cfg->display.height);

    xcb_generic_error_t *e = xcb_request_check(conn, ck);
    if (e != ((void*)0)) {
        msg_Dbg(vd, "%s: RENDER error %d", "cannot composite",
                e->error_code);
        free(e);
    }
    (void) pic;
}
