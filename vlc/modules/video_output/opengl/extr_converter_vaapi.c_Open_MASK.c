#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_16__ {scalar_t__ type; int /*<<< orphan*/ * opaque; } ;
typedef  TYPE_3__ vlc_decoder_device ;
struct priv {int /*<<< orphan*/ * vadpy; int /*<<< orphan*/ * glEGLImageTargetTexture2DOES; scalar_t__ fourcc; } ;
struct TYPE_15__ {int i_chroma; int /*<<< orphan*/  space; } ;
struct TYPE_17__ {char const* glexts; scalar_t__ fshader; int /*<<< orphan*/  pf_get_pool; int /*<<< orphan*/  pf_update; TYPE_2__ fmt; TYPE_6__* gl; struct priv* priv; int /*<<< orphan*/ * vctx; } ;
typedef  TYPE_4__ opengl_tex_converter_t ;
struct TYPE_14__ {char* (* queryString ) (TYPE_6__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * destroyImageKHR; int /*<<< orphan*/ * createImageKHR; } ;
struct TYPE_18__ {scalar_t__ ext; TYPE_1__ egl; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_EXTENSIONS ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int VA_FOURCC_NV12 ; 
 int VA_FOURCC_P010 ; 
 int VLC_CODEC_NV12 ; 
 int VLC_CODEC_P010 ; 
#define  VLC_CODEC_VAAPI_420 129 
#define  VLC_CODEC_VAAPI_420_10BPP 128 
 scalar_t__ VLC_DECODER_DEVICE_VAAPI ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_GL_EXT_EGL ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct priv* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct priv*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tc_vaegl_get_pool ; 
 int /*<<< orphan*/  tc_vaegl_update ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_4__*,struct priv*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(vlc_object_t *obj)
{
    opengl_tex_converter_t *tc = (void *) obj;

    if (tc->vctx == NULL)
        return VLC_EGENERIC;
    vlc_decoder_device *dec_device = FUNC14(tc->vctx);
    if (dec_device->type != VLC_DECODER_DEVICE_VAAPI
     || !FUNC13(tc->fmt.i_chroma)
     || tc->gl->ext != VLC_GL_EXT_EGL
     || tc->gl->egl.createImageKHR == NULL
     || tc->gl->egl.destroyImageKHR == NULL)
    {
        FUNC10(dec_device);
        return VLC_EGENERIC;
    }

    if (!FUNC12(tc->glexts, "GL_OES_EGL_image"))
    {
        FUNC10(dec_device);
        return VLC_EGENERIC;
    }

    const char *eglexts = tc->gl->egl.queryString(tc->gl, EGL_EXTENSIONS);
    if (eglexts == NULL || !FUNC12(eglexts, "EGL_EXT_image_dma_buf_import"))
    {
        FUNC10(dec_device);
        return VLC_EGENERIC;
    }

    struct priv *priv = tc->priv = FUNC1(1, sizeof(struct priv));
    if (FUNC7(tc->priv == NULL))
        goto error;
    priv->fourcc = 0;

    int va_fourcc;
    int vlc_sw_chroma;
    switch (tc->fmt.i_chroma)
    {
        case VLC_CODEC_VAAPI_420:
            va_fourcc = VA_FOURCC_NV12;
            vlc_sw_chroma = VLC_CODEC_NV12;
            break;
        case VLC_CODEC_VAAPI_420_10BPP:
            va_fourcc = VA_FOURCC_P010;
            vlc_sw_chroma = VLC_CODEC_P010;
            break;
        default:
            FUNC9();
    }

    if (FUNC8(tc, priv, va_fourcc))
        goto error;

    priv->glEGLImageTargetTexture2DOES =
        FUNC11(tc->gl, "glEGLImageTargetTexture2DOES");
    if (priv->glEGLImageTargetTexture2DOES == NULL)
        goto error;

    priv->vadpy = dec_device->opaque;
    FUNC0(priv->vadpy != NULL);

    if (FUNC6(tc, priv->vadpy))
        goto error;

    if (FUNC5(tc, dec_device))
        goto error;

    tc->fshader = FUNC3(tc, GL_TEXTURE_2D, vlc_sw_chroma,
                                              tc->fmt.space);
    if (tc->fshader == 0)
        goto error;

    tc->pf_update  = tc_vaegl_update;
    tc->pf_get_pool = tc_vaegl_get_pool;

    FUNC10(dec_device);

    return VLC_SUCCESS;
error:
    FUNC10(dec_device);
    FUNC2(priv);
    return VLC_EGENERIC;
}