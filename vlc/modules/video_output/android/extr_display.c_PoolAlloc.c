
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_13__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_14__ {TYPE_11__* p_window; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int pool_cfg ;
typedef int picture_t ;
typedef int picture_pool_t ;
struct TYPE_15__ {unsigned int picture_count; int unlock; int lock; int ** picture; } ;
typedef TYPE_3__ picture_pool_configuration_t ;
struct TYPE_12__ {unsigned int i_pic_count; int fmt; } ;


 scalar_t__ AndroidWindow_Setup (TYPE_2__*,TYPE_11__*,unsigned int) ;
 int * PictureAlloc (TYPE_2__*,int *,int) ;
 int PoolLockOpaquePicture ;
 int PoolUnlockOpaquePicture ;
 int UpdateVideoSize (TYPE_2__*,int *) ;
 int ** calloc (unsigned int,int) ;
 int free (int **) ;
 int memset (TYPE_3__*,int ,int) ;
 int msg_Dbg (TYPE_1__*,char*,unsigned int) ;
 int picture_Release (int *) ;
 int * picture_pool_NewExtended (TYPE_3__*) ;

__attribute__((used)) static picture_pool_t *PoolAlloc(vout_display_t *vd, unsigned requested_count)
{
    vout_display_sys_t *sys = vd->sys;
    picture_pool_t *pool = ((void*)0);
    picture_t **pp_pics = ((void*)0);
    unsigned int i = 0;

    msg_Dbg(vd, "PoolAlloc: request %d frames", requested_count);
    if (AndroidWindow_Setup(sys, sys->p_window, requested_count) != 0)
        goto error;

    requested_count = sys->p_window->i_pic_count;
    msg_Dbg(vd, "PoolAlloc: got %d frames", requested_count);

    UpdateVideoSize(sys, &sys->p_window->fmt);

    pp_pics = calloc(requested_count, sizeof(picture_t));

    for (i = 0; i < requested_count; i++)
    {
        picture_t *p_pic = PictureAlloc(sys, &sys->p_window->fmt, 1);
        if (!p_pic)
            goto error;

        pp_pics[i] = p_pic;
    }

    picture_pool_configuration_t pool_cfg;
    memset(&pool_cfg, 0, sizeof(pool_cfg));
    pool_cfg.picture_count = requested_count;
    pool_cfg.picture = pp_pics;
    pool_cfg.lock = PoolLockOpaquePicture;
    pool_cfg.unlock = PoolUnlockOpaquePicture;
    pool = picture_pool_NewExtended(&pool_cfg);

error:
    if (!pool && pp_pics) {
        for (unsigned j = 0; j < i; j++)
            picture_Release(pp_pics[j]);
    }
    free(pp_pics);
    return pool;
}
