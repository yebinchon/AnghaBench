
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


struct TYPE_21__ {TYPE_7__* sys; } ;
typedef TYPE_6__ vout_display_t ;
struct TYPE_15__ {TYPE_5__* cropViewport; } ;
struct TYPE_18__ {int viewpoint; } ;
struct TYPE_16__ {scalar_t__ height; scalar_t__ y; scalar_t__ width; scalar_t__ x; } ;
struct TYPE_19__ {TYPE_3__ vdcfg; TYPE_1__ place; } ;
struct TYPE_17__ {int pixelFormat; } ;
struct TYPE_22__ {TYPE_12__ picQuad; TYPE_4__ area; TYPE_2__ display; } ;
typedef TYPE_7__ vout_display_sys_t ;
struct TYPE_23__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_20__ {int Height; int Width; int TopLeftY; int TopLeftX; } ;
typedef TYPE_8__ RECT ;


 int D3D11_UpdateViewport (TYPE_12__*,TYPE_8__*,int ) ;
 int SetQuadVSProjection (TYPE_6__*,TYPE_12__*,int *) ;
 int msg_Dbg (TYPE_6__*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void UpdatePicQuadPosition(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    RECT rect_dst = {
        .left = sys->area.place.x,
        .right = sys->area.place.x + sys->area.place.width,
        .top = sys->area.place.y,
        .bottom = sys->area.place.y + sys->area.place.height
    };

    D3D11_UpdateViewport( &sys->picQuad, &rect_dst, sys->display.pixelFormat );

    SetQuadVSProjection(vd, &sys->picQuad, &sys->area.vdcfg.viewpoint);


    msg_Dbg( vd, "picQuad position (%.02f,%.02f) %.02fx%.02f",
             sys->picQuad.cropViewport[0].TopLeftX, sys->picQuad.cropViewport[0].TopLeftY,
             sys->picQuad.cropViewport[0].Width, sys->picQuad.cropViewport[0].Height );

}
