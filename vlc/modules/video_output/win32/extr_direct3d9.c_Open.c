
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_25__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_10__ ;


struct TYPE_33__ {int i_chroma; } ;
struct TYPE_31__ {int * subpicture_chromas; } ;
struct TYPE_34__ {scalar_t__ max_luminance; } ;
struct TYPE_36__ {scalar_t__ projection_mode; scalar_t__ i_visible_width; scalar_t__ i_visible_height; TYPE_3__ mastering; } ;
struct TYPE_35__ {int force; } ;
struct TYPE_38__ {TYPE_8__* sys; int close; int control; int display; int prepare; int pool; TYPE_2__ fmt; TYPE_1__ info; TYPE_5__ source; TYPE_4__ obj; } ;
typedef TYPE_7__ vout_display_t ;
struct TYPE_37__ {scalar_t__ MaxTextureWidth; scalar_t__ MaxTextureHeight; int SrcBlendCaps; int DestBlendCaps; int TextureCaps; int TextureOpCaps; } ;
struct TYPE_32__ {TYPE_6__ caps; } ;
struct TYPE_39__ {int reset_device; int lost_not_ready; scalar_t__ d3dregion_format; int sys; TYPE_25__ d3d_dev; int allow_hw_yuv; int hxdll; int area; int * swapCb; int hd3d; int * startEndRenderingCb; int * updateOutputCb; TYPE_7__* outside_opaque; } ;
typedef TYPE_8__ vout_display_sys_t ;
typedef int vout_display_cfg_t ;
typedef int vlc_video_context ;
typedef int video_format_t ;
struct TYPE_40__ {int dev; } ;
typedef TYPE_9__ d3d9_video_context_t ;
struct TYPE_30__ {int adapter; int * device; } ;
typedef TYPE_10__ d3d9_decoder_device_t ;
typedef int HRESULT ;
typedef int * HMODULE ;


 int Close ;
 int CommonInit (TYPE_7__*,int *,int const*) ;
 int CommonPlacePicture (int ,int *,int *) ;
 int CommonWindowClean (int ,int *) ;
 scalar_t__ CommonWindowInit (int ,int *,int *,int) ;
 int Control ;
 int D3D9_CloneExternal (int *,int *) ;
 scalar_t__ D3D9_Create (TYPE_7__*,int *) ;
 int D3D9_CreateDevice (TYPE_7__*,int *,int,TYPE_25__*) ;
 int D3D9_CreateDeviceExternal (int ,int *,TYPE_25__*) ;
 int D3D9_Destroy (int *) ;
 scalar_t__ D3DFMT_UNKNOWN ;
 int D3DPBLENDCAPS_INVSRCALPHA ;
 int D3DPBLENDCAPS_SRCALPHA ;
 int D3DPTEXTURECAPS_ALPHA ;
 int D3DTEXOPCAPS_MODULATE ;
 int D3DTEXOPCAPS_SELECTARG1 ;
 int Direct3D9Close (TYPE_7__*) ;
 int Direct3D9Destroy (TYPE_8__*) ;
 int Direct3D9LoadShaderLibrary () ;
 scalar_t__ Direct3D9Open (TYPE_7__*,int *) ;
 int Display ;
 int DisplayPool ;
 scalar_t__ FAILED (int ) ;
 TYPE_9__* GetD3D9ContextPrivate (int *) ;
 TYPE_10__* GetD3D9OpaqueContext (int *) ;
 int * GetModuleHandle (int ) ;
 int * GetProcAddress (int *,char*) ;
 int * LocalSwapchainSwap ;
 int * LocalSwapchainUpdateOutput ;
 scalar_t__ PROJECTION_MODE_RECTANGULAR ;
 int Prepare ;
 int TEXT (char*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_7__*) ;
 scalar_t__ VLC_SUCCESS ;
 TYPE_8__* calloc (int,int) ;
 int * d3d_subpicture_chromas ;
 int free (TYPE_8__*) ;
 scalar_t__ is_d3d9_opaque (int ) ;
 scalar_t__ likely (int ) ;
 int msg_Err (TYPE_7__*,char*,...) ;
 int msg_Warn (TYPE_7__*,char*) ;
 int var_CreateGetBool (TYPE_7__*,char*) ;
 void* var_InheritAddress (TYPE_7__*,char*) ;
 scalar_t__ var_InheritBool (TYPE_7__*,char*) ;
 int video_format_Clean (int *) ;
 int video_format_Copy (int *,int *) ;

__attribute__((used)) static int Open(vout_display_t *vd, const vout_display_cfg_t *cfg,
                video_format_t *fmtp, vlc_video_context *context)
{
    vout_display_sys_t *sys;

    if ( !vd->obj.force && vd->source.projection_mode != PROJECTION_MODE_RECTANGULAR)
        return VLC_EGENERIC;

    if ( !vd->obj.force && vd->source.mastering.max_luminance != 0)
        return VLC_EGENERIC;


    if (!vd->obj.force)
    {
        bool isVistaOrGreater = 0;
        HMODULE hKernel32 = GetModuleHandle(TEXT("kernel32.dll"));
        if (likely(hKernel32 != ((void*)0)))
            isVistaOrGreater = GetProcAddress(hKernel32, "EnumResourceLanguagesExW") != ((void*)0);
        if (!isVistaOrGreater)
            return VLC_EGENERIC;
    }


    vd->sys = sys = calloc(1, sizeof(vout_display_sys_t));
    if (!sys)
        return VLC_ENOMEM;

    CommonInit(vd, &sys->area, cfg);

    sys->outside_opaque = var_InheritAddress( vd, "vout-cb-opaque" );
    sys->updateOutputCb = var_InheritAddress( vd, "vout-cb-update-output" );
    sys->swapCb = var_InheritAddress( vd, "vout-cb-swap" );
    sys->startEndRenderingCb = var_InheritAddress( vd, "vout-cb-make-current" );

    if ( sys->swapCb == ((void*)0) || sys->startEndRenderingCb == ((void*)0) || sys->updateOutputCb == ((void*)0) )
    {

        if (CommonWindowInit(VLC_OBJECT(vd), &sys->area, &sys->sys, 0))
            goto error;

        sys->outside_opaque = vd;
        sys->updateOutputCb = LocalSwapchainUpdateOutput;
        sys->swapCb = LocalSwapchainSwap;
        sys->startEndRenderingCb = ((void*)0);
    }

    d3d9_decoder_device_t *d3d9_decoder = GetD3D9OpaqueContext(context);
    if ( d3d9_decoder == ((void*)0) )
    {

        if (D3D9_Create(vd, &sys->hd3d) != VLC_SUCCESS)
            goto error;
    }
    if (d3d9_decoder != ((void*)0) && d3d9_decoder->device != ((void*)0))
        D3D9_CloneExternal( &sys->hd3d, d3d9_decoder->device );

    d3d9_video_context_t *octx = GetD3D9ContextPrivate(context);
    HRESULT hr;
    if (octx != ((void*)0))
        hr = D3D9_CreateDeviceExternal(octx->dev, &sys->hd3d, &sys->d3d_dev);
    else
        hr = D3D9_CreateDevice(vd, &sys->hd3d, d3d9_decoder ? d3d9_decoder->adapter : -1, &sys->d3d_dev);

    if (FAILED(hr)) {
        msg_Err( vd, "D3D9 Creation failed! (hr=0x%lX)", hr);
        D3D9_Destroy(&sys->hd3d);
        free(sys);
        return VLC_EGENERIC;
    }

    if ( vd->source.i_visible_width > sys->d3d_dev.caps.MaxTextureWidth ||
         vd->source.i_visible_height > sys->d3d_dev.caps.MaxTextureHeight )
    {
        msg_Err(vd, "Textures too large %ux%u max possible: %lx%lx",
                vd->source.i_visible_width, vd->source.i_visible_height,
                sys->d3d_dev.caps.MaxTextureWidth,
                sys->d3d_dev.caps.MaxTextureHeight);
        goto error;
    }

    if (sys->swapCb == LocalSwapchainSwap)
        CommonPlacePicture(VLC_OBJECT(vd), &sys->area, &sys->sys);

    sys->hxdll = Direct3D9LoadShaderLibrary();
    if (!sys->hxdll)
        msg_Warn(vd, "cannot load Direct3D9 Shader Library; HLSL pixel shading will be disabled.");

    sys->reset_device = 0;
    sys->lost_not_ready = 0;
    sys->allow_hw_yuv = var_CreateGetBool(vd, "directx-hw-yuv");


    video_format_t fmt;
    if (Direct3D9Open(vd, &fmt)) {
        msg_Err(vd, "Direct3D9 could not be opened");
        goto error;
    }


    if (var_InheritBool(vd, "direct3d9-hw-blending") &&
        sys->d3dregion_format != D3DFMT_UNKNOWN &&
        (sys->d3d_dev.caps.SrcBlendCaps & D3DPBLENDCAPS_SRCALPHA) &&
        (sys->d3d_dev.caps.DestBlendCaps & D3DPBLENDCAPS_INVSRCALPHA) &&
        (sys->d3d_dev.caps.TextureCaps & D3DPTEXTURECAPS_ALPHA) &&
        (sys->d3d_dev.caps.TextureOpCaps & D3DTEXOPCAPS_SELECTARG1) &&
        (sys->d3d_dev.caps.TextureOpCaps & D3DTEXOPCAPS_MODULATE))
        vd->info.subpicture_chromas = d3d_subpicture_chromas;
    else
        vd->info.subpicture_chromas = ((void*)0);

    video_format_Clean(fmtp);
    video_format_Copy(fmtp, &fmt);

    if ( is_d3d9_opaque(vd->fmt.i_chroma) )
        vd->pool = DisplayPool;
    vd->prepare = Prepare;
    vd->display = Display;
    vd->control = Control;
    vd->close = Close;

    return VLC_SUCCESS;
error:
    Direct3D9Close(vd);
    CommonWindowClean(VLC_OBJECT(vd), &sys->sys);
    Direct3D9Destroy(sys);
    free(vd->sys);
    return VLC_EGENERIC;
}
