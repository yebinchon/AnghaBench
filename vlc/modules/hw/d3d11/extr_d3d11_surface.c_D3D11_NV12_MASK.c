#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_19__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_25__ {scalar_t__ i_visible_height; scalar_t__ i_y_offset; } ;
struct TYPE_26__ {TYPE_1__ format; int /*<<< orphan*/ * context; } ;
typedef  TYPE_2__ picture_t ;
struct TYPE_27__ {int /*<<< orphan*/  context; int /*<<< orphan*/  processorInput; int /*<<< orphan*/ ** resource; scalar_t__ slice_index; } ;
typedef  TYPE_3__ picture_sys_d3d11_t ;
struct TYPE_28__ {TYPE_5__* p_sys; } ;
typedef  TYPE_4__ filter_t ;
struct TYPE_24__ {int /*<<< orphan*/  videoProcessor; int /*<<< orphan*/  d3dvidctx; scalar_t__ procEnumerator; } ;
struct TYPE_29__ {int /*<<< orphan*/  staging_lock; int /*<<< orphan*/  staging_resource; int /*<<< orphan*/  cache; int /*<<< orphan*/  staging; int /*<<< orphan*/ * procOutResource; int /*<<< orphan*/  processorOutput; TYPE_19__ d3d_proc; } ;
typedef  TYPE_5__ filter_sys_t ;
typedef  scalar_t__ UINT ;
struct TYPE_32__ {int RowPitch; int /*<<< orphan*/  const* pData; } ;
struct TYPE_31__ {scalar_t__ Format; int Height; } ;
struct TYPE_30__ {int /*<<< orphan*/  pInputSurface; int /*<<< orphan*/  Enable; } ;
typedef  int /*<<< orphan*/  ID3D11Resource ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_6__ D3D11_VIDEO_PROCESSOR_STREAM ;
typedef  TYPE_7__ D3D11_TEXTURE2D_DESC ;
typedef  TYPE_8__ D3D11_MAPPED_SUBRESOURCE ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_4__*,TYPE_19__*,TYPE_3__*) ; 
 int /*<<< orphan*/  D3D11_MAP_READ ; 
 scalar_t__ DXGI_FORMAT_NV12 ; 
 scalar_t__ DXGI_FORMAT_P010 ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_6__*) ; 
 size_t KNOWN_DXGI_INDEX ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(filter_t *p_filter, picture_t *src, picture_t *dst)
{
    if (src->context == NULL)
    {
        /* the previous stages creating a D3D11 picture should always fill the context */
        FUNC11(p_filter, "missing source context");
        return;
    }

    filter_sys_t *sys = p_filter->p_sys;
    picture_sys_d3d11_t *p_sys = FUNC0(src);

    D3D11_TEXTURE2D_DESC desc;
    D3D11_MAPPED_SUBRESOURCE lock;

    FUNC12(&sys->staging_lock);
    if (FUNC10(p_filter, p_sys) != VLC_SUCCESS)
    {
        FUNC13(&sys->staging_lock);
        return;
    }

    UINT srcSlice = p_sys->slice_index;
    ID3D11Resource *srcResource = p_sys->resource[KNOWN_DXGI_INDEX];

#if CAN_PROCESSOR
    if (sys->d3d_proc.procEnumerator)
    {
        HRESULT hr;
        if (FAILED( D3D11_Assert_ProcessorInput(p_filter, &sys->d3d_proc, p_sys) ))
            return;

        D3D11_VIDEO_PROCESSOR_STREAM stream = {
            .Enable = TRUE,
            .pInputSurface = p_sys->processorInput,
        };

        hr = ID3D11VideoContext_VideoProcessorBlt(sys->d3d_proc.d3dvidctx, sys->d3d_proc.videoProcessor,
                                                          sys->processorOutput,
                                                          0, 1, &stream);
        if (FAILED(hr))
        {
            msg_Err(p_filter, "Failed to process the video. (hr=0x%lX)", hr);
            vlc_mutex_unlock(&sys->staging_lock);
            return;
        }

        srcResource = sys->procOutResource;
        srcSlice = 0;
    }
#endif
    FUNC4(p_sys->context, sys->staging_resource,
                                              0, 0, 0, 0,
                                              srcResource,
                                              srcSlice,
                                              NULL);

    HRESULT hr = FUNC5(p_sys->context, sys->staging_resource,
                                         0, D3D11_MAP_READ, 0, &lock);
    if (FUNC3(hr)) {
        FUNC11(p_filter, "Failed to map source surface. (hr=0x%lX)", hr);
        FUNC13(&sys->staging_lock);
        return;
    }

    FUNC7(sys->staging, &desc);

    if (desc.Format == DXGI_FORMAT_NV12 || desc.Format == DXGI_FORMAT_P010) {
        const uint8_t *plane[2] = {
            lock.pData,
            (uint8_t*)lock.pData + lock.RowPitch * desc.Height
        };
        size_t  pitch[2] = {
            lock.RowPitch,
            lock.RowPitch,
        };
        FUNC1(dst, plane, pitch,
                         FUNC9(desc.Height, src->format.i_y_offset + src->format.i_visible_height),
                         &sys->cache);
    } else {
        FUNC11(p_filter, "Unsupported D3D11VA conversion from 0x%08X to NV12", desc.Format);
    }

    /* */
    FUNC6(p_sys->context, sys->staging_resource, 0);
    FUNC13(&sys->staging_lock);
}