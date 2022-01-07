
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ** display_pics; } ;
struct priv {TYPE_2__ pbo; } ;
typedef int picture_t ;
struct TYPE_9__ {TYPE_1__* vt; struct priv* priv; } ;
typedef TYPE_3__ opengl_tex_converter_t ;
struct TYPE_7__ {int (* BindBuffer ) (int ,int ) ;} ;


 int GL_PIXEL_UNPACK_BUFFER ;
 size_t PBO_DISPLAY_COUNT ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ pbo_data_alloc (TYPE_3__ const*,int *) ;
 int * pbo_picture_create (TYPE_3__ const*) ;
 int picture_Release (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int
pbo_pics_alloc(const opengl_tex_converter_t *tc)
{
    struct priv *priv = tc->priv;
    for (size_t i = 0; i < PBO_DISPLAY_COUNT; ++i)
    {
        picture_t *pic = priv->pbo.display_pics[i] = pbo_picture_create(tc);
        if (pic == ((void*)0))
            goto error;

        if (pbo_data_alloc(tc, pic) != VLC_SUCCESS)
            goto error;
    }


    tc->vt->BindBuffer(GL_PIXEL_UNPACK_BUFFER, 0);

    return VLC_SUCCESS;
error:
    for (size_t i = 0; i < PBO_DISPLAY_COUNT && priv->pbo.display_pics[i]; ++i)
        picture_Release(priv->pbo.display_pics[i]);
    return VLC_EGENERIC;
}
