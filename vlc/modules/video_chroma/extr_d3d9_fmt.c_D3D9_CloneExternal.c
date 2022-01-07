
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use_ex; int * hdll; int * obj; } ;
typedef TYPE_1__ d3d9_handle_t ;
typedef int IDirect3D9Ex ;
typedef int IDirect3D9 ;


 int IDirect3D9Ex_Release (int *) ;
 int IDirect3D9_AddRef (int *) ;
 int IDirect3D9_QueryInterface (int *,int *,void**) ;
 int IID_IDirect3D9Ex ;
 int SUCCEEDED (int ) ;

void D3D9_CloneExternal(d3d9_handle_t *hd3d, IDirect3D9 *dev)
{
    hd3d->obj = dev;
    IDirect3D9_AddRef( hd3d->obj );
    hd3d->hdll = ((void*)0);

    void *pv = ((void*)0);
    hd3d->use_ex = SUCCEEDED(IDirect3D9_QueryInterface(dev, &IID_IDirect3D9Ex, &pv));
    if (hd3d->use_ex && pv)
        IDirect3D9Ex_Release((IDirect3D9Ex*) pv);
}
