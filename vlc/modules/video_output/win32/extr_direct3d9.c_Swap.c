
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_21__ {TYPE_7__* sys; } ;
typedef TYPE_6__ vout_display_t ;
struct TYPE_20__ {int hvideownd; } ;
struct TYPE_19__ {scalar_t__ use_ex; } ;
struct TYPE_16__ {int height; int width; } ;
struct TYPE_17__ {TYPE_1__ display; } ;
struct TYPE_18__ {TYPE_2__ vdcfg; } ;
struct TYPE_23__ {int dev; int devex; } ;
struct TYPE_22__ {TYPE_5__ sys; TYPE_4__ hd3d; TYPE_3__ area; TYPE_8__ d3d_dev; } ;
typedef TYPE_7__ vout_display_sys_t ;
typedef TYPE_8__ d3d9_device_t ;
struct TYPE_24__ {int bottom; int top; int right; int left; } ;
typedef TYPE_9__ RECT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9Ex_PresentEx (int ,TYPE_9__*,TYPE_9__*,int ,int *,int ) ;
 int IDirect3DDevice9_Present (int ,TYPE_9__*,TYPE_9__*,int ,int *) ;
 int msg_Dbg (TYPE_6__*,char*,int ) ;

__attribute__((used)) static void Swap(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    const d3d9_device_t *p_d3d9_dev = &sys->d3d_dev;



    RECT src = {
        .left = 0,
        .right = sys->area.vdcfg.display.width,
        .top = 0,
        .bottom = sys->area.vdcfg.display.height
    };

    HRESULT hr;
    if (sys->hd3d.use_ex) {
        hr = IDirect3DDevice9Ex_PresentEx(p_d3d9_dev->devex, &src, &src, sys->sys.hvideownd, ((void*)0), 0);
    } else {
        hr = IDirect3DDevice9_Present(p_d3d9_dev->dev, &src, &src, sys->sys.hvideownd, ((void*)0));
    }
    if (FAILED(hr)) {
        msg_Dbg(vd, "Failed Present: 0x%lX", hr);
    }
}
