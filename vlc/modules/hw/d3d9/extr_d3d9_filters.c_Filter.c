
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_56__ TYPE_9__ ;
typedef struct TYPE_55__ TYPE_8__ ;
typedef struct TYPE_54__ TYPE_7__ ;
typedef struct TYPE_53__ TYPE_6__ ;
typedef struct TYPE_52__ TYPE_5__ ;
typedef struct TYPE_51__ TYPE_4__ ;
typedef struct TYPE_50__ TYPE_3__ ;
typedef struct TYPE_49__ TYPE_2__ ;
typedef struct TYPE_48__ TYPE_20__ ;
typedef struct TYPE_47__ TYPE_1__ ;
typedef struct TYPE_46__ TYPE_19__ ;
typedef struct TYPE_45__ TYPE_18__ ;
typedef struct TYPE_44__ TYPE_17__ ;
typedef struct TYPE_43__ TYPE_16__ ;
typedef struct TYPE_42__ TYPE_15__ ;
typedef struct TYPE_41__ TYPE_14__ ;
typedef struct TYPE_40__ TYPE_13__ ;
typedef struct TYPE_39__ TYPE_12__ ;
typedef struct TYPE_38__ TYPE_11__ ;
typedef struct TYPE_37__ TYPE_10__ ;


struct TYPE_40__ {TYPE_14__* p_sys; } ;
typedef TYPE_13__ picture_t ;
struct TYPE_41__ {int surface; } ;
typedef TYPE_14__ picture_sys_d3d9_t ;
struct TYPE_42__ {TYPE_16__* p_sys; } ;
typedef TYPE_15__ filter_t ;
struct TYPE_39__ {int dev; } ;
struct TYPE_56__ {int level; } ;
struct TYPE_53__ {int level; } ;
struct TYPE_51__ {int level; } ;
struct TYPE_49__ {int level; } ;
struct TYPE_43__ {int hw_surface; TYPE_12__ d3d_dev; int processor; TYPE_9__ Saturation; TYPE_6__ Hue; TYPE_4__ Contrast; TYPE_2__ Brightness; } ;
typedef TYPE_16__ filter_sys_t ;
struct TYPE_54__ {void* ll; } ;
struct TYPE_52__ {void* ll; } ;
struct TYPE_50__ {void* ll; } ;
struct TYPE_47__ {void* ll; } ;
struct TYPE_55__ {TYPE_7__ Saturation; TYPE_5__ Hue; TYPE_3__ Contrast; TYPE_1__ Brightness; } ;
struct TYPE_48__ {int Width; int Height; } ;
struct TYPE_38__ {int Alpha; } ;
struct TYPE_37__ {int SampleFormat; } ;
struct TYPE_44__ {void* right; void* bottom; scalar_t__ left; scalar_t__ top; } ;
struct TYPE_46__ {TYPE_11__ BackgroundColor; TYPE_10__ DestFormat; int Alpha; scalar_t__ DestData; TYPE_17__ TargetRect; scalar_t__ TargetFrame; TYPE_8__ ProcAmpValues; int member_0; } ;
struct TYPE_45__ {int member_0; } ;
typedef TYPE_17__ RECT ;
typedef int HRESULT ;
typedef TYPE_18__ DXVA2_VideoSample ;
typedef TYPE_19__ DXVA2_VideoProcessBltParams ;
typedef TYPE_20__ D3DSURFACE_DESC ;


 TYPE_14__* ActiveD3D9PictureSys (TYPE_13__*) ;
 int D3DTEXF_NONE ;
 int DXVA2_Fixed32OpaqueAlpha () ;
 int DXVA2_SampleProgressiveFrame ;
 scalar_t__ FAILED (int ) ;
 int FillSample (TYPE_18__*,TYPE_13__*,TYPE_17__*) ;
 int IDirect3DDevice9_StretchRect (int ,int ,int *,int ,int *,int ) ;
 int IDirect3DSurface9_GetDesc (int ,TYPE_20__*) ;
 int IDirectXVideoProcessor_VideoProcessBlt (int ,int ,TYPE_19__*,TYPE_18__*,int,int *) ;
 void* __MIN (int ,int ) ;
 void* atomic_load (int *) ;
 TYPE_13__* filter_NewPicture (TYPE_15__*) ;
 int picture_CopyProperties (TYPE_13__*,TYPE_13__*) ;
 int picture_Release (TYPE_13__*) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static picture_t *Filter(filter_t *p_filter, picture_t *p_pic)
{
    filter_sys_t *p_sys = p_filter->p_sys;

    picture_sys_d3d9_t *p_src_sys = ActiveD3D9PictureSys(p_pic);

    picture_t *p_outpic = filter_NewPicture( p_filter );
    if( !p_outpic )
        goto failed;

    picture_sys_d3d9_t *p_out_sys = p_outpic->p_sys;
    if( !p_out_sys || !p_out_sys->surface )
        goto failed;

    picture_CopyProperties( p_outpic, p_pic );

    RECT area;
    D3DSURFACE_DESC srcDesc, dstDesc;
    HRESULT hr;

    hr = IDirect3DSurface9_GetDesc( p_src_sys->surface, &srcDesc );
    if (unlikely(FAILED(hr)))
        goto failed;
    hr = IDirect3DSurface9_GetDesc( p_sys->hw_surface, &dstDesc );
    if (unlikely(FAILED(hr)))
        goto failed;

    area.top = area.left = 0;
    area.bottom = __MIN(srcDesc.Height, dstDesc.Height);
    area.right = __MIN(srcDesc.Width, dstDesc.Width);

    DXVA2_VideoProcessBltParams params = {0};
    DXVA2_VideoSample sample = {0};
    FillSample( &sample, p_pic, &area );

    params.ProcAmpValues.Brightness.ll = atomic_load( &p_sys->Brightness.level );
    params.ProcAmpValues.Contrast.ll = atomic_load( &p_sys->Contrast.level );
    params.ProcAmpValues.Hue.ll = atomic_load( &p_sys->Hue.level );
    params.ProcAmpValues.Saturation.ll = atomic_load( &p_sys->Saturation.level );
    params.TargetFrame = 0;
    params.TargetRect = area;
    params.DestData = 0;
    params.Alpha = DXVA2_Fixed32OpaqueAlpha();
    params.DestFormat.SampleFormat = DXVA2_SampleProgressiveFrame;
    params.BackgroundColor.Alpha = 0xFFFF;

    hr = IDirectXVideoProcessor_VideoProcessBlt( p_sys->processor,
                                                 p_sys->hw_surface,
                                                 &params,
                                                 &sample,
                                                 1, ((void*)0) );
    hr = IDirect3DDevice9_StretchRect( p_sys->d3d_dev.dev,
                                       p_sys->hw_surface, ((void*)0),
                                       p_out_sys->surface, ((void*)0),
                                       D3DTEXF_NONE);
    if (FAILED(hr))
        goto failed;

    picture_Release( p_pic );
    return p_outpic;
failed:
    picture_Release( p_pic );
    return ((void*)0);
}
