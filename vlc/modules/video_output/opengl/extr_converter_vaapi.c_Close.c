
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int * pic; } ;
struct priv {TYPE_1__ last; } ;
struct TYPE_5__ {struct priv* priv; } ;
typedef TYPE_2__ opengl_tex_converter_t ;


 int free (struct priv*) ;
 int vaegl_release_last_pic (TYPE_2__*,struct priv*) ;

__attribute__((used)) static void
Close(vlc_object_t *obj)
{
    opengl_tex_converter_t *tc = (void *)obj;
    struct priv *priv = tc->priv;

    if (priv->last.pic != ((void*)0))
        vaegl_release_last_pic(tc, priv);

    free(tc->priv);
}
