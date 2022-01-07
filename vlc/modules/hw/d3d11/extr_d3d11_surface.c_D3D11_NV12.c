
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_19__ ;


typedef int const uint8_t ;
struct TYPE_25__ {scalar_t__ i_visible_height; scalar_t__ i_y_offset; } ;
struct TYPE_26__ {TYPE_1__ format; int * context; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_27__ {int context; int processorInput; int ** resource; scalar_t__ slice_index; } ;
typedef TYPE_3__ picture_sys_d3d11_t ;
struct TYPE_28__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_24__ {int videoProcessor; int d3dvidctx; scalar_t__ procEnumerator; } ;
struct TYPE_29__ {int staging_lock; int staging_resource; int cache; int staging; int * procOutResource; int processorOutput; TYPE_19__ d3d_proc; } ;
typedef TYPE_5__ filter_sys_t ;
typedef scalar_t__ UINT ;
struct TYPE_32__ {int RowPitch; int const* pData; } ;
struct TYPE_31__ {scalar_t__ Format; int Height; } ;
struct TYPE_30__ {int pInputSurface; int Enable; } ;
typedef int ID3D11Resource ;
typedef scalar_t__ HRESULT ;
typedef TYPE_6__ D3D11_VIDEO_PROCESSOR_STREAM ;
typedef TYPE_7__ D3D11_TEXTURE2D_DESC ;
typedef TYPE_8__ D3D11_MAPPED_SUBRESOURCE ;


 TYPE_3__* ActiveD3D11PictureSys (TYPE_2__*) ;
 int Copy420_SP_to_SP (TYPE_2__*,int const**,size_t*,int ,int *) ;
 scalar_t__ D3D11_Assert_ProcessorInput (TYPE_4__*,TYPE_19__*,TYPE_3__*) ;
 int D3D11_MAP_READ ;
 scalar_t__ DXGI_FORMAT_NV12 ;
 scalar_t__ DXGI_FORMAT_P010 ;
 scalar_t__ FAILED (scalar_t__) ;
 int ID3D11DeviceContext_CopySubresourceRegion (int ,int ,int ,int ,int ,int ,int *,scalar_t__,int *) ;
 scalar_t__ ID3D11DeviceContext_Map (int ,int ,int ,int ,int ,TYPE_8__*) ;
 int ID3D11DeviceContext_Unmap (int ,int ,int ) ;
 int ID3D11Texture2D_GetDesc (int ,TYPE_7__*) ;
 scalar_t__ ID3D11VideoContext_VideoProcessorBlt (int ,int ,int ,int ,int,TYPE_6__*) ;
 size_t KNOWN_DXGI_INDEX ;
 int TRUE ;
 scalar_t__ VLC_SUCCESS ;
 int __MIN (int,scalar_t__) ;
 scalar_t__ assert_staging (TYPE_4__*,TYPE_3__*) ;
 int msg_Err (TYPE_4__*,char*,...) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void D3D11_NV12(filter_t *p_filter, picture_t *src, picture_t *dst)
{
    if (src->context == ((void*)0))
    {

        msg_Err(p_filter, "missing source context");
        return;
    }

    filter_sys_t *sys = p_filter->p_sys;
    picture_sys_d3d11_t *p_sys = ActiveD3D11PictureSys(src);

    D3D11_TEXTURE2D_DESC desc;
    D3D11_MAPPED_SUBRESOURCE lock;

    vlc_mutex_lock(&sys->staging_lock);
    if (assert_staging(p_filter, p_sys) != VLC_SUCCESS)
    {
        vlc_mutex_unlock(&sys->staging_lock);
        return;
    }

    UINT srcSlice = p_sys->slice_index;
    ID3D11Resource *srcResource = p_sys->resource[KNOWN_DXGI_INDEX];
    ID3D11DeviceContext_CopySubresourceRegion(p_sys->context, sys->staging_resource,
                                              0, 0, 0, 0,
                                              srcResource,
                                              srcSlice,
                                              ((void*)0));

    HRESULT hr = ID3D11DeviceContext_Map(p_sys->context, sys->staging_resource,
                                         0, D3D11_MAP_READ, 0, &lock);
    if (FAILED(hr)) {
        msg_Err(p_filter, "Failed to map source surface. (hr=0x%lX)", hr);
        vlc_mutex_unlock(&sys->staging_lock);
        return;
    }

    ID3D11Texture2D_GetDesc(sys->staging, &desc);

    if (desc.Format == DXGI_FORMAT_NV12 || desc.Format == DXGI_FORMAT_P010) {
        const uint8_t *plane[2] = {
            lock.pData,
            (uint8_t*)lock.pData + lock.RowPitch * desc.Height
        };
        size_t pitch[2] = {
            lock.RowPitch,
            lock.RowPitch,
        };
        Copy420_SP_to_SP(dst, plane, pitch,
                         __MIN(desc.Height, src->format.i_y_offset + src->format.i_visible_height),
                         &sys->cache);
    } else {
        msg_Err(p_filter, "Unsupported D3D11VA conversion from 0x%08X to NV12", desc.Format);
    }


    ID3D11DeviceContext_Unmap(p_sys->context, sys->staging_resource, 0);
    vlc_mutex_unlock(&sys->staging_lock);
}
