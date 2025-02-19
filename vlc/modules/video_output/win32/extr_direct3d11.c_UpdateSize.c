
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int orientation; scalar_t__ i_visible_height; scalar_t__ i_y_offset; scalar_t__ i_visible_width; scalar_t__ i_x_offset; } ;
struct TYPE_16__ {TYPE_3__ source; int fmt; TYPE_5__* sys; } ;
typedef TYPE_4__ vout_display_t ;
struct TYPE_13__ {int height; int width; } ;
struct TYPE_14__ {TYPE_1__ place; } ;
struct TYPE_17__ {int d3d_dev; int picQuad; TYPE_2__ area; } ;
typedef TYPE_5__ vout_display_sys_t ;
struct TYPE_18__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_6__ RECT ;


 int D3D11_UpdateQuadPosition (TYPE_4__*,int *,int *,TYPE_6__*,int ) ;
 int QueryDisplayFormat (TYPE_4__*,int *) ;
 int UpdatePicQuadPosition (TYPE_4__*) ;
 int d3d11_device_lock (int *) ;
 int d3d11_device_unlock (int *) ;
 int msg_Dbg (TYPE_4__*,char*,int ,int ) ;

__attribute__((used)) static void UpdateSize(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    msg_Dbg(vd, "Detected size change %dx%d", sys->area.place.width,
            sys->area.place.height);

    QueryDisplayFormat(vd, &vd->fmt);

    d3d11_device_lock( &sys->d3d_dev );

    UpdatePicQuadPosition(vd);

    RECT source_rect = {
        .left = vd->source.i_x_offset,
        .right = vd->source.i_x_offset + vd->source.i_visible_width,
        .top = vd->source.i_y_offset,
        .bottom = vd->source.i_y_offset + vd->source.i_visible_height,
    };
    D3D11_UpdateQuadPosition(vd, &sys->d3d_dev, &sys->picQuad, &source_rect,
                             vd->source.orientation);

    d3d11_device_unlock( &sys->d3d_dev );
}
