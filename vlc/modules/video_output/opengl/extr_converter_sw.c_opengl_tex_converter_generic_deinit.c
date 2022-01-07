
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* display_pics; } ;
struct priv {struct priv* texture_temp_buf; TYPE_1__ pbo; } ;
struct TYPE_5__ {struct priv* priv; } ;
typedef TYPE_2__ opengl_tex_converter_t ;


 size_t PBO_DISPLAY_COUNT ;
 int free (struct priv*) ;
 int picture_Release (scalar_t__) ;

void
opengl_tex_converter_generic_deinit(opengl_tex_converter_t *tc)
{
    struct priv *priv = tc->priv;
    for (size_t i = 0; i < PBO_DISPLAY_COUNT && priv->pbo.display_pics[i]; ++i)
        picture_Release(priv->pbo.display_pics[i]);
    free(priv->texture_temp_buf);
    free(tc->priv);
}
