
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct priv {int awh; } ;
typedef int picture_t ;
struct TYPE_11__ {int b_vd_ref; int i_index; int lock; int p_jsurface; int p_surface; } ;
struct TYPE_12__ {TYPE_1__ hw; } ;
typedef TYPE_2__ picture_sys_t ;
struct TYPE_13__ {int pf_destroy; TYPE_2__* p_sys; } ;
typedef TYPE_3__ picture_resource_t ;
typedef int picture_pool_t ;
struct TYPE_14__ {unsigned int picture_count; int unlock; int lock; int ** picture; } ;
typedef TYPE_4__ picture_pool_configuration_t ;
struct TYPE_15__ {int fmt; struct priv* priv; } ;
typedef TYPE_5__ opengl_tex_converter_t ;


 int AndroidOpaquePicture_DetachVout ;
 int FORCED_COUNT ;
 int SurfaceTexture_getANativeWindow (int ) ;
 int SurfaceTexture_getSurface (int ) ;
 TYPE_2__* calloc (int,int) ;
 int free (TYPE_2__*) ;
 int * picture_NewFromResource (int *,TYPE_3__*) ;
 int picture_Release (int *) ;
 int * picture_pool_NewExtended (TYPE_4__*) ;
 int pool_lock_pic ;
 int pool_unlock_pic ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static picture_pool_t *
tc_anop_get_pool(const opengl_tex_converter_t *tc, unsigned requested_count)
{
    struct priv *priv = tc->priv;

    requested_count = 31;
    picture_t *picture[31] = {((void*)0), };
    unsigned count;

    for (count = 0; count < requested_count; count++)
    {
        picture_sys_t *p_picsys = calloc(1, sizeof(*p_picsys));
        if (unlikely(p_picsys == ((void*)0)))
            goto error;
        picture_resource_t rsc = {
            .p_sys = p_picsys,
            .pf_destroy = AndroidOpaquePicture_DetachVout,
        };

        p_picsys->hw.b_vd_ref = 1;
        p_picsys->hw.p_surface = SurfaceTexture_getANativeWindow(priv->awh);
        p_picsys->hw.p_jsurface = SurfaceTexture_getSurface(priv->awh);
        p_picsys->hw.i_index = -1;
        vlc_mutex_init(&p_picsys->hw.lock);

        picture[count] = picture_NewFromResource(&tc->fmt, &rsc);
        if (!picture[count])
        {
            free(p_picsys);
            goto error;
        }
    }


    picture_pool_configuration_t pool_cfg = {
        .picture_count = requested_count,
        .picture = picture,
        .lock = pool_lock_pic,
        .unlock = pool_unlock_pic,
    };
    picture_pool_t *pool = picture_pool_NewExtended(&pool_cfg);
    if (!pool)
        goto error;

    return pool;
error:
    for (unsigned i = 0; i < count; i++)
        picture_Release(picture[i]);
    return ((void*)0);
}
