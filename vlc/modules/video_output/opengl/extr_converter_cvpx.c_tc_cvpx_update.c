
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct priv {int * last_pic; int gl_ctx; } ;
typedef int picture_t ;
struct TYPE_7__ {unsigned int tex_count; int gl; TYPE_2__* texs; int tex_target; TYPE_1__* vt; struct priv* priv; } ;
typedef TYPE_3__ opengl_tex_converter_t ;
struct TYPE_6__ {int type; int format; int internal; } ;
struct TYPE_5__ {int (* BindTexture ) (int ,int ) ;int (* ActiveTexture ) (scalar_t__) ;} ;
typedef int IOSurfaceRef ;
typedef int GLuint ;
typedef int GLsizei ;
typedef int CVPixelBufferRef ;
typedef scalar_t__ CGLError ;


 int CGLErrorString (scalar_t__) ;
 scalar_t__ CGLTexImageIOSurface2D (int ,int ,int ,int const,int const,int ,int ,int ,unsigned int) ;
 int CVPixelBufferGetIOSurface (int ) ;
 scalar_t__ GL_TEXTURE0 ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int cvpxpic_get_ref (int *) ;
 scalar_t__ kCGLNoError ;
 int msg_Err (int ,char*,unsigned int,int ) ;
 int * picture_Hold (int *) ;
 int picture_Release (int *) ;
 int stub1 (scalar_t__) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static int
tc_cvpx_update(const opengl_tex_converter_t *tc, GLuint *textures,
               const GLsizei *tex_width, const GLsizei *tex_height,
               picture_t *pic, const size_t *plane_offset)
{
    (void) plane_offset;
    struct priv *priv = tc->priv;

    CVPixelBufferRef pixelBuffer = cvpxpic_get_ref(pic);

    IOSurfaceRef surface = CVPixelBufferGetIOSurface(pixelBuffer);

    for (unsigned i = 0; i < tc->tex_count; ++i)
    {
        tc->vt->ActiveTexture(GL_TEXTURE0 + i);
        tc->vt->BindTexture(tc->tex_target, textures[i]);

        CGLError err =
            CGLTexImageIOSurface2D(priv->gl_ctx, tc->tex_target,
                                   tc->texs[i].internal,
                                   tex_width[i], tex_height[i],
                                   tc->texs[i].format,
                                   tc->texs[i].type,
                                   surface, i);
        if (err != kCGLNoError)
        {
            msg_Err(tc->gl, "CGLTexImageIOSurface2D error: %u: %s", i,
                    CGLErrorString(err));
            return VLC_EGENERIC;
        }
    }

    if (priv->last_pic != pic)
    {
        if (priv->last_pic != ((void*)0))
            picture_Release(priv->last_pic);
        priv->last_pic = picture_Hold(pic);
    }

    return VLC_SUCCESS;
}
