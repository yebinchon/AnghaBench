
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use_ex; int * hdll; int obj; } ;
typedef TYPE_1__ d3d9_handle_t ;
typedef int IDirect3DDevice9 ;
typedef int HRESULT ;


 int FAILED (int ) ;
 int IDirect3DDevice9_GetDirect3D (int *,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ unlikely (int ) ;

int D3D9_CreateExternal(d3d9_handle_t *hd3d, IDirect3DDevice9 *d3d9dev)
{
    HRESULT hr = IDirect3DDevice9_GetDirect3D(d3d9dev, &hd3d->obj);
    if (unlikely(FAILED(hr)))
        return VLC_EGENERIC;
    hd3d->hdll = ((void*)0);
    hd3d->use_ex = 0;
    return VLC_SUCCESS;
}
