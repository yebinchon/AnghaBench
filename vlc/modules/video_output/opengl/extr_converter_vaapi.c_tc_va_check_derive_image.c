
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_decoder_device ;
struct priv {int vadpy; } ;
typedef int picture_pool_t ;
struct TYPE_5__ {int fmt; struct priv* priv; int gl; } ;
typedef TYPE_1__ opengl_tex_converter_t ;
typedef int VASurfaceID ;
struct TYPE_6__ {int image_id; } ;
typedef TYPE_2__ VAImage ;


 int VA_INVALID_ID ;
 int VLC_EGENERIC ;
 int * VLC_OBJECT (int ) ;
 int picture_pool_Release (int *) ;
 int vlc_vaapi_DeriveImage (int *,int ,int ,TYPE_2__*) ;
 int * vlc_vaapi_PoolNew (int *,int *,int ,int,int **,int *,int) ;

__attribute__((used)) static int
tc_va_check_derive_image(opengl_tex_converter_t *tc,
                         vlc_decoder_device *dec_device)
{
    vlc_object_t *o = VLC_OBJECT(tc->gl);
    struct priv *priv = tc->priv;
    VASurfaceID *va_surface_ids;

    picture_pool_t *pool = vlc_vaapi_PoolNew(o, dec_device, priv->vadpy, 1,
                                             &va_surface_ids, &tc->fmt, 1);
    if (!pool)
        return VLC_EGENERIC;

    VAImage va_image = { .image_id = VA_INVALID_ID };
    int ret = vlc_vaapi_DeriveImage(o, priv->vadpy, va_surface_ids[0],
                                    &va_image);

    picture_pool_Release(pool);

    return ret;
}
