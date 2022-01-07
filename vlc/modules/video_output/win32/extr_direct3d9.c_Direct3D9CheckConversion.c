
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_6__ {int * obj; } ;
struct TYPE_8__ {TYPE_1__ hd3d; } ;
typedef TYPE_3__ vout_display_sys_t ;
typedef int IDirect3D9 ;
typedef scalar_t__ HRESULT ;
typedef int D3DFORMAT ;


 int D3DADAPTER_DEFAULT ;
 int D3DDEVTYPE_HAL ;
 scalar_t__ D3DERR_NOTAVAILABLE ;
 int D3DRTYPE_SURFACE ;
 scalar_t__ IDirect3D9_CheckDeviceFormat (int *,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ IDirect3D9_CheckDeviceFormatConversion (int *,int ,int ,int ,int ) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (TYPE_2__*,char*,scalar_t__) ;

__attribute__((used)) static int Direct3D9CheckConversion(vout_display_t *vd,
                                   D3DFORMAT src, D3DFORMAT dst)
{
    vout_display_sys_t *sys = vd->sys;
    IDirect3D9 *d3dobj = sys->hd3d.obj;
    HRESULT hr;


    hr = IDirect3D9_CheckDeviceFormat(d3dobj, D3DADAPTER_DEFAULT,
                                      D3DDEVTYPE_HAL, dst, 0,
                                      D3DRTYPE_SURFACE, src);
    if (SUCCEEDED(hr)) {



        hr = IDirect3D9_CheckDeviceFormatConversion(d3dobj,
                                                    D3DADAPTER_DEFAULT,
                                                    D3DDEVTYPE_HAL,
                                                    src, dst);
    }
    if (!SUCCEEDED(hr)) {
        if (D3DERR_NOTAVAILABLE != hr)
            msg_Err(vd, "Could not query adapter supported formats. (hr=0x%lX)", hr);
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
