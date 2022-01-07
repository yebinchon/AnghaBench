
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct priv {int * last_pic; int cache; int * last_cvtexs; } ;
struct TYPE_2__ {unsigned int tex_count; struct priv* priv; } ;
typedef TYPE_1__ opengl_tex_converter_t ;


 int CFRelease (int ) ;
 int free (struct priv*) ;
 scalar_t__ likely (int ) ;
 int picture_Release (int *) ;

__attribute__((used)) static void
Close(vlc_object_t *obj)
{
    opengl_tex_converter_t *tc = (void *)obj;
    struct priv *priv = tc->priv;
    if (priv->last_pic != ((void*)0))
        picture_Release(priv->last_pic);

    free(tc->priv);
}
