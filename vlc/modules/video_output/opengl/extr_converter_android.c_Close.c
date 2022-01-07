
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct priv {int awh; scalar_t__ stex_attached; } ;
struct TYPE_2__ {struct priv* priv; } ;
typedef TYPE_1__ opengl_tex_converter_t ;


 int SurfaceTexture_detachFromGLContext (int ) ;
 int free (struct priv*) ;

__attribute__((used)) static void
Close(vlc_object_t *obj)
{
    opengl_tex_converter_t *tc = (void *)obj;
    struct priv *priv = tc->priv;

    if (priv->stex_attached)
        SurfaceTexture_detachFromGLContext(priv->awh);

    free(priv);
}
