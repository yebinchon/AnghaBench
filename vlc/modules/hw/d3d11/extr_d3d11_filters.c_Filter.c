
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_22__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_23__ {int slice_index; int * resource; int context; int * processorInput; } ;
typedef TYPE_4__ picture_sys_d3d11_t ;
struct TYPE_20__ {int video; } ;
struct TYPE_24__ {TYPE_1__ fmt_out; TYPE_6__* p_sys; } ;
typedef TYPE_5__ filter_t ;
struct TYPE_25__ {int d3d_dev; int ** procOutput; TYPE_2__* out; int Saturation; int Hue; int Brightness; int Contrast; int ** procInput; int d3d_proc; } ;
typedef TYPE_6__ filter_sys_t ;
struct TYPE_21__ {int resource; } ;
typedef int ID3D11VideoProcessorOutputView ;
typedef int ID3D11VideoProcessorInputView ;


 TYPE_4__* ActiveD3D11PictureSys (TYPE_3__*) ;
 scalar_t__ ApplyFilter (TYPE_6__*,int ,int *,int *,int *,int *) ;
 int D3D11_Assert_ProcessorInput (TYPE_5__*,int *,TYPE_4__*) ;
 int D3D11_VIDEO_PROCESSOR_FILTER_BRIGHTNESS ;
 int D3D11_VIDEO_PROCESSOR_FILTER_CONTRAST ;
 int D3D11_VIDEO_PROCESSOR_FILTER_HUE ;
 int D3D11_VIDEO_PROCESSOR_FILTER_SATURATION ;
 scalar_t__ FAILED (int ) ;
 int ID3D11DeviceContext_CopySubresourceRegion (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 size_t KNOWN_DXGI_INDEX ;
 int d3d11_device_lock (int *) ;
 int d3d11_device_unlock (int *) ;
 TYPE_3__* filter_NewPicture (TYPE_5__*) ;
 int picture_CopyProperties (TYPE_3__*,TYPE_3__*) ;
 int picture_Release (TYPE_3__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static picture_t *Filter(filter_t *p_filter, picture_t *p_pic)
{
    filter_sys_t *p_sys = p_filter->p_sys;

    picture_sys_d3d11_t *p_src_sys = ActiveD3D11PictureSys(p_pic);
    if (FAILED( D3D11_Assert_ProcessorInput(p_filter, &p_sys->d3d_proc, p_src_sys) ))
    {
        picture_Release( p_pic );
        return ((void*)0);
    }

    picture_t *p_outpic = filter_NewPicture( p_filter );
    if( !p_outpic )
    {
        picture_Release( p_pic );
        return ((void*)0);
    }
    picture_sys_d3d11_t *p_out_sys = p_outpic->p_sys;
    if (unlikely(!p_out_sys))
    {


        picture_Release( p_pic );
        return ((void*)0);
    }

    picture_CopyProperties( p_outpic, p_pic );

    ID3D11VideoProcessorInputView *inputs[4] = {
        p_src_sys->processorInput,
        p_sys->procInput[0],
        p_sys->procInput[1],
        p_sys->procInput[0]
    };

    ID3D11VideoProcessorOutputView *outputs[4] = {
        p_sys->procOutput[0],
        p_sys->procOutput[1],
        p_sys->procOutput[0],
        p_sys->procOutput[1]
    };

    d3d11_device_lock( &p_sys->d3d_dev );

    size_t idx = 0, count = 0;

    if ( ApplyFilter( p_sys,
                      D3D11_VIDEO_PROCESSOR_FILTER_CONTRAST, &p_sys->Contrast,
                      inputs[idx], outputs[idx], &p_filter->fmt_out.video ) )
    {
        idx++;
        count++;
    }

    if ( ApplyFilter( p_sys,
                      D3D11_VIDEO_PROCESSOR_FILTER_BRIGHTNESS, &p_sys->Brightness,
                      inputs[idx], outputs[idx], &p_filter->fmt_out.video ) )
    {
        idx++;
        count++;
    }

    if ( ApplyFilter( p_sys,
                      D3D11_VIDEO_PROCESSOR_FILTER_HUE, &p_sys->Hue,
                      inputs[idx], outputs[idx], &p_filter->fmt_out.video ) )
    {
        idx++;
        count++;
    }

    if ( ApplyFilter( p_sys,
                      D3D11_VIDEO_PROCESSOR_FILTER_SATURATION, &p_sys->Saturation,
                      inputs[idx], outputs[idx], &p_filter->fmt_out.video ) )
    {
        idx++;
        count++;
    }

    if (count == 0)
    {
        ID3D11DeviceContext_CopySubresourceRegion(p_out_sys->context,
                                                  p_out_sys->resource[KNOWN_DXGI_INDEX],
                                                  p_out_sys->slice_index,
                                                  0, 0, 0,
                                                  p_src_sys->resource[KNOWN_DXGI_INDEX],
                                                  p_src_sys->slice_index,
                                                  ((void*)0));
    }
    else
    {
        ID3D11DeviceContext_CopySubresourceRegion(p_out_sys->context,
                                                  p_out_sys->resource[KNOWN_DXGI_INDEX],
                                                  p_out_sys->slice_index,
                                                  0, 0, 0,
                                                  p_sys->out[outputs[idx] == p_sys->procOutput[0] ? 1 : 0].resource,
                                                  0,
                                                  ((void*)0));
    }

    d3d11_device_unlock( &p_sys->d3d_dev );

    picture_Release( p_pic );
    return p_outpic;
}
