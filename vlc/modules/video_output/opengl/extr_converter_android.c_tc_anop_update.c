
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct priv {int * transform_mtx; int awh; } ;
struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_10__ {int b_locked; } ;
typedef TYPE_3__ picture_sys_t ;
struct TYPE_11__ {int tex_target; TYPE_1__* vt; struct priv* priv; } ;
typedef TYPE_4__ opengl_tex_converter_t ;
struct TYPE_8__ {int (* BindTexture ) (int ,scalar_t__) ;int (* ActiveTexture ) (int ) ;} ;
typedef scalar_t__ GLuint ;
typedef int GLsizei ;


 int AndroidOpaquePicture_Release (TYPE_3__*,int) ;
 int GL_TEXTURE0 ;
 int SurfaceTexture_waitAndUpdateTexImage (int ,int **) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int stub1 (int ) ;
 int stub2 (int ,scalar_t__) ;

__attribute__((used)) static int
tc_anop_update(const opengl_tex_converter_t *tc, GLuint *textures,
               const GLsizei *tex_width, const GLsizei *tex_height,
               picture_t *pic, const size_t *plane_offset)
{
    picture_sys_t *p_sys = pic->p_sys;
    (void) tex_width; (void) tex_height; (void) plane_offset;
    assert(textures[0] != 0);

    if (plane_offset != ((void*)0))
        return VLC_EGENERIC;

    if (!p_sys->b_locked)
        return VLC_SUCCESS;

    struct priv *priv = tc->priv;

    AndroidOpaquePicture_Release(pic->p_sys, 1);

    if (SurfaceTexture_waitAndUpdateTexImage(priv->awh, &priv->transform_mtx)
        != VLC_SUCCESS)
    {
        priv->transform_mtx = ((void*)0);
        return VLC_EGENERIC;
    }

    tc->vt->ActiveTexture(GL_TEXTURE0);
    tc->vt->BindTexture(tc->tex_target, textures[0]);

    return VLC_SUCCESS;
}
