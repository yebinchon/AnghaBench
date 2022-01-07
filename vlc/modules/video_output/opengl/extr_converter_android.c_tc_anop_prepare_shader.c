
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int uSTMatrix; } ;
struct priv {int * transform_mtx; TYPE_2__ uloc; } ;
struct TYPE_7__ {TYPE_1__* vt; struct priv* priv; } ;
typedef TYPE_3__ opengl_tex_converter_t ;
struct TYPE_5__ {int (* UniformMatrix4fv ) (int ,int,int ,int *) ;} ;
typedef int GLsizei ;


 int GL_FALSE ;
 int stub1 (int ,int,int ,int *) ;

__attribute__((used)) static void
tc_anop_prepare_shader(const opengl_tex_converter_t *tc,
                       const GLsizei *tex_width, const GLsizei *tex_height,
                       float alpha)
{
    (void) tex_width; (void) tex_height; (void) alpha;
    struct priv *priv = tc->priv;
    if (priv->transform_mtx != ((void*)0))
        tc->vt->UniformMatrix4fv(priv->uloc.uSTMatrix, 1, GL_FALSE,
                                  priv->transform_mtx);
}
