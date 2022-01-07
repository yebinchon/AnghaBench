
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int p_pixels; int i_pitch; int i_lines; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_21__ {TYPE_1__* p; int * context; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_22__ {int slice_index; int * resource; int context; } ;
typedef TYPE_3__ picture_sys_d3d11_t ;
struct TYPE_23__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_24__ {int staging_lock; int staging; int staging_resource; } ;
typedef TYPE_5__ filter_sys_t ;
struct TYPE_26__ {int pData; int RowPitch; } ;
struct TYPE_25__ {int Height; } ;
typedef int HRESULT ;
typedef TYPE_6__ D3D11_TEXTURE2D_DESC ;
typedef TYPE_7__ D3D11_MAPPED_SUBRESOURCE ;


 TYPE_3__* ActiveD3D11PictureSys (TYPE_2__*) ;
 int D3D11_MAP_READ ;
 scalar_t__ FAILED (int ) ;
 int ID3D11DeviceContext_CopySubresourceRegion (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int ID3D11DeviceContext_Map (int ,int ,int ,int ,int ,TYPE_7__*) ;
 int ID3D11DeviceContext_Unmap (int ,int ,int ) ;
 int ID3D11Texture2D_GetDesc (int ,TYPE_6__*) ;
 size_t KNOWN_DXGI_INDEX ;
 scalar_t__ VLC_SUCCESS ;
 int assert (int ) ;
 scalar_t__ assert_staging (TYPE_4__*,TYPE_3__*) ;
 int msg_Err (TYPE_4__*,char*,int ) ;
 int plane_CopyPixels (TYPE_1__*,TYPE_1__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void D3D11_RGBA(filter_t *p_filter, picture_t *src, picture_t *dst)
{
    filter_sys_t *sys = p_filter->p_sys;
    assert(src->context != ((void*)0));
    picture_sys_d3d11_t *p_sys = ActiveD3D11PictureSys(src);

    D3D11_TEXTURE2D_DESC desc;
    D3D11_MAPPED_SUBRESOURCE lock;

    vlc_mutex_lock(&sys->staging_lock);
    if (assert_staging(p_filter, p_sys) != VLC_SUCCESS)
    {
        vlc_mutex_unlock(&sys->staging_lock);
        return;
    }

    ID3D11DeviceContext_CopySubresourceRegion(p_sys->context, sys->staging_resource,
                                              0, 0, 0, 0,
                                              p_sys->resource[KNOWN_DXGI_INDEX],
                                              p_sys->slice_index,
                                              ((void*)0));

    HRESULT hr = ID3D11DeviceContext_Map(p_sys->context, sys->staging_resource,
                                         0, D3D11_MAP_READ, 0, &lock);
    if (FAILED(hr)) {
        msg_Err(p_filter, "Failed to map source surface. (hr=0x%lX)", hr);
        vlc_mutex_unlock(&sys->staging_lock);
        return;
    }

    ID3D11Texture2D_GetDesc(sys->staging, &desc);

    plane_t src_planes = dst->p[0];
    src_planes.i_lines = desc.Height;
    src_planes.i_pitch = lock.RowPitch;
    src_planes.p_pixels = lock.pData;
    plane_CopyPixels( dst->p, &src_planes );


    ID3D11DeviceContext_Unmap(p_sys->context,
                              p_sys->resource[KNOWN_DXGI_INDEX], p_sys->slice_index);
    vlc_mutex_unlock(&sys->staging_lock);
}
