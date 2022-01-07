
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int stex_attached; int awh; } ;
struct TYPE_3__ {int gl; struct priv* priv; } ;
typedef TYPE_1__ opengl_tex_converter_t ;
typedef int GLuint ;
typedef int GLsizei ;


 scalar_t__ SurfaceTexture_attachToGLContext (int ,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int msg_Err (int ,char*) ;

__attribute__((used)) static int
tc_anop_allocate_textures(const opengl_tex_converter_t *tc, GLuint *textures,
                          const GLsizei *tex_width, const GLsizei *tex_height)
{
    (void) tex_width; (void) tex_height;
    struct priv *priv = tc->priv;
    assert(textures[0] != 0);
    if (SurfaceTexture_attachToGLContext(priv->awh, textures[0]) != 0)
    {
        msg_Err(tc->gl, "SurfaceTexture_attachToGLContext failed");
        return VLC_EGENERIC;
    }
    priv->stex_attached = 1;
    return VLC_SUCCESS;
}
