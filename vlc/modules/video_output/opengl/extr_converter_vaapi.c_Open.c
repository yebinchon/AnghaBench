
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_16__ {scalar_t__ type; int * opaque; } ;
typedef TYPE_3__ vlc_decoder_device ;
struct priv {int * vadpy; int * glEGLImageTargetTexture2DOES; scalar_t__ fourcc; } ;
struct TYPE_15__ {int i_chroma; int space; } ;
struct TYPE_17__ {char const* glexts; scalar_t__ fshader; int pf_get_pool; int pf_update; TYPE_2__ fmt; TYPE_6__* gl; struct priv* priv; int * vctx; } ;
typedef TYPE_4__ opengl_tex_converter_t ;
struct TYPE_14__ {char* (* queryString ) (TYPE_6__*,int ) ;int * destroyImageKHR; int * createImageKHR; } ;
struct TYPE_18__ {scalar_t__ ext; TYPE_1__ egl; } ;


 int EGL_EXTENSIONS ;
 int GL_TEXTURE_2D ;
 int VA_FOURCC_NV12 ;
 int VA_FOURCC_P010 ;
 int VLC_CODEC_NV12 ;
 int VLC_CODEC_P010 ;


 scalar_t__ VLC_DECODER_DEVICE_VAAPI ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_GL_EXT_EGL ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 struct priv* calloc (int,int) ;
 int free (struct priv*) ;
 scalar_t__ opengl_fragment_shader_init (TYPE_4__*,int ,int,int ) ;
 char* stub1 (TYPE_6__*,int ) ;
 scalar_t__ tc_va_check_derive_image (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ tc_va_check_interop_blacklist (TYPE_4__*,int *) ;
 int tc_vaegl_get_pool ;
 int tc_vaegl_update ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vaegl_init_fourcc (TYPE_4__*,struct priv*,int) ;
 int vlc_assert_unreachable () ;
 int vlc_decoder_device_Release (TYPE_3__*) ;
 int * vlc_gl_GetProcAddress (TYPE_6__*,char*) ;
 int vlc_gl_StrHasToken (char const*,char*) ;
 int vlc_vaapi_IsChromaOpaque (int) ;
 TYPE_3__* vlc_video_context_HoldDevice (int *) ;

__attribute__((used)) static int
Open(vlc_object_t *obj)
{
    opengl_tex_converter_t *tc = (void *) obj;

    if (tc->vctx == ((void*)0))
        return VLC_EGENERIC;
    vlc_decoder_device *dec_device = vlc_video_context_HoldDevice(tc->vctx);
    if (dec_device->type != VLC_DECODER_DEVICE_VAAPI
     || !vlc_vaapi_IsChromaOpaque(tc->fmt.i_chroma)
     || tc->gl->ext != VLC_GL_EXT_EGL
     || tc->gl->egl.createImageKHR == ((void*)0)
     || tc->gl->egl.destroyImageKHR == ((void*)0))
    {
        vlc_decoder_device_Release(dec_device);
        return VLC_EGENERIC;
    }

    if (!vlc_gl_StrHasToken(tc->glexts, "GL_OES_EGL_image"))
    {
        vlc_decoder_device_Release(dec_device);
        return VLC_EGENERIC;
    }

    const char *eglexts = tc->gl->egl.queryString(tc->gl, EGL_EXTENSIONS);
    if (eglexts == ((void*)0) || !vlc_gl_StrHasToken(eglexts, "EGL_EXT_image_dma_buf_import"))
    {
        vlc_decoder_device_Release(dec_device);
        return VLC_EGENERIC;
    }

    struct priv *priv = tc->priv = calloc(1, sizeof(struct priv));
    if (unlikely(tc->priv == ((void*)0)))
        goto error;
    priv->fourcc = 0;

    int va_fourcc;
    int vlc_sw_chroma;
    switch (tc->fmt.i_chroma)
    {
        case 129:
            va_fourcc = VA_FOURCC_NV12;
            vlc_sw_chroma = VLC_CODEC_NV12;
            break;
        case 128:
            va_fourcc = VA_FOURCC_P010;
            vlc_sw_chroma = VLC_CODEC_P010;
            break;
        default:
            vlc_assert_unreachable();
    }

    if (vaegl_init_fourcc(tc, priv, va_fourcc))
        goto error;

    priv->glEGLImageTargetTexture2DOES =
        vlc_gl_GetProcAddress(tc->gl, "glEGLImageTargetTexture2DOES");
    if (priv->glEGLImageTargetTexture2DOES == ((void*)0))
        goto error;

    priv->vadpy = dec_device->opaque;
    assert(priv->vadpy != ((void*)0));

    if (tc_va_check_interop_blacklist(tc, priv->vadpy))
        goto error;

    if (tc_va_check_derive_image(tc, dec_device))
        goto error;

    tc->fshader = opengl_fragment_shader_init(tc, GL_TEXTURE_2D, vlc_sw_chroma,
                                              tc->fmt.space);
    if (tc->fshader == 0)
        goto error;

    tc->pf_update = tc_vaegl_update;
    tc->pf_get_pool = tc_vaegl_get_pool;

    vlc_decoder_device_Release(dec_device);

    return VLC_SUCCESS;
error:
    vlc_decoder_device_Release(dec_device);
    free(priv);
    return VLC_EGENERIC;
}
