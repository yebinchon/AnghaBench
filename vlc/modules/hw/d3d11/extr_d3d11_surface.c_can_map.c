
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int staging_resource; } ;
typedef TYPE_1__ filter_sys_t ;
typedef int ID3D11DeviceContext ;
typedef int HRESULT ;
typedef int D3D11_MAPPED_SUBRESOURCE ;


 int D3D11_MAP_READ ;
 int ID3D11DeviceContext_Map (int *,int ,int ,int ,int ,int *) ;
 int ID3D11DeviceContext_Unmap (int *,int ,int ) ;

__attribute__((used)) static HRESULT can_map(filter_sys_t *sys, ID3D11DeviceContext *context)
{
    D3D11_MAPPED_SUBRESOURCE lock;
    HRESULT hr = ID3D11DeviceContext_Map(context, sys->staging_resource, 0,
                                         D3D11_MAP_READ, 0, &lock);
    ID3D11DeviceContext_Unmap(context, sys->staging_resource, 0);
    return hr;
}
