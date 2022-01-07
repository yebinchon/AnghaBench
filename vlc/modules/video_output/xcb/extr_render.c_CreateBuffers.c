
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_22__ {int member_8; int matrix12; int matrix21; int matrix11; int matrix22; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_5__ xcb_render_transform_t ;
typedef int xcb_connection_t ;
struct TYPE_17__ {int i_visible_width; int i_visible_height; int orientation; } ;
struct TYPE_23__ {TYPE_7__* sys; TYPE_10__ source; } ;
typedef TYPE_6__ vout_display_t ;
struct TYPE_21__ {int crop; int scale; } ;
struct TYPE_25__ {int height; int width; } ;
struct TYPE_20__ {int argb; } ;
struct TYPE_19__ {int scale; int crop; } ;
struct TYPE_24__ {int src_x; int src_y; int * filter; TYPE_4__ picture; TYPE_8__ place; TYPE_3__ format; TYPE_2__ drawable; int root; int * conn; } ;
typedef TYPE_7__ vout_display_sys_t ;
typedef TYPE_8__ vout_display_place_t ;
struct TYPE_18__ {int width; int height; } ;
struct TYPE_26__ {TYPE_1__ display; } ;
typedef TYPE_9__ vout_display_cfg_t ;
typedef TYPE_10__ video_format_t ;
typedef int int32_t ;




 scalar_t__ ORIENT_IS_SWAP (int) ;






 scalar_t__ likely (int ) ;
 int strlen (int *) ;
 int vout_display_PlacePicture (TYPE_8__*,TYPE_10__ const*,TYPE_9__ const*) ;
 int xcb_create_pixmap (int *,int,int ,int ,int,int) ;
 int xcb_render_create_picture (int *,int ,int ,int ,int ,int *) ;
 int xcb_render_set_picture_filter (int *,int ,int ,int *,int ,int *) ;
 int xcb_render_set_picture_transform (int *,int ,TYPE_5__) ;

__attribute__((used)) static void CreateBuffers(vout_display_t *vd, const vout_display_cfg_t *cfg)
{
    const video_format_t *fmt = &vd->source;
    vout_display_sys_t *sys = vd->sys;
    xcb_connection_t *conn = sys->conn;

    xcb_create_pixmap(conn, 32, sys->drawable.crop, sys->root,
                      fmt->i_visible_width, fmt->i_visible_height);
    xcb_create_pixmap(conn, 32, sys->drawable.scale, sys->root,
                      cfg->display.width, cfg->display.height);
    xcb_render_create_picture(conn, sys->picture.crop, sys->drawable.crop,
                              sys->format.argb, 0, ((void*)0));
    xcb_render_create_picture(conn, sys->picture.scale, sys->drawable.scale,
                              sys->format.argb, 0, ((void*)0));

    vout_display_place_t *place = &sys->place;
    vout_display_PlacePicture(place, fmt, cfg);



    int32_t ax = place->height;
    int32_t ay = place->width;
    int32_t bx = 0;
    int32_t by = 0;

    switch (fmt->orientation) {
        case 129:
        case 132:
            break;
        case 128:
        case 130:
            ax *= -1;
            bx -= place->width;
            break;
        case 135:
        case 133:
            ay *= -1;
            by -= place->height;
            break;
        case 134:
        case 131:
            ax *= -1;
            ay *= -1;
            bx -= place->width;
            by -= place->height;
            break;
    }

    sys->src_x = bx;
    sys->src_y = by;

    xcb_render_transform_t transform = {
        0, 0, 0,
        0, 0, 0,

        0, 0, place->width * place->height,
    };

    if (ORIENT_IS_SWAP(fmt->orientation)) {
        transform.matrix12 = ay * fmt->i_visible_width;
        transform.matrix21 = ax * fmt->i_visible_height;
    } else {
        transform.matrix11 = ax * fmt->i_visible_width;
        transform.matrix22 = ay * fmt->i_visible_height;
    }

    xcb_render_set_picture_transform(conn, sys->picture.crop, transform);

    if (likely(sys->filter != ((void*)0)))
        xcb_render_set_picture_filter(conn, sys->picture.crop,
                                      strlen(sys->filter), sys->filter,
                                      0, ((void*)0));
}
