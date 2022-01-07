
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {unsigned int num_planes; int image_id; int buf; } ;
struct TYPE_7__ {int pic; TYPE_1__ va_image; int * egl_images; } ;
struct priv {TYPE_2__ last; int vadpy; } ;
struct TYPE_8__ {int gl; } ;
typedef TYPE_3__ opengl_tex_converter_t ;


 int * VLC_OBJECT (int ) ;
 int picture_Release (int ) ;
 int vaegl_image_destroy (TYPE_3__ const*,int ) ;
 int vlc_vaapi_DestroyImage (int *,int ,int ) ;
 int vlc_vaapi_ReleaseBufferHandle (int *,int ,int ) ;

__attribute__((used)) static void
vaegl_release_last_pic(const opengl_tex_converter_t *tc, struct priv *priv)
{
    vlc_object_t *o = VLC_OBJECT(tc->gl);

    for (unsigned i = 0; i < priv->last.va_image.num_planes; ++i)
        vaegl_image_destroy(tc, priv->last.egl_images[i]);

    vlc_vaapi_ReleaseBufferHandle(o, priv->vadpy, priv->last.va_image.buf);

    vlc_vaapi_DestroyImage(o, priv->vadpy, priv->last.va_image.image_id);

    picture_Release(priv->last.pic);
}
