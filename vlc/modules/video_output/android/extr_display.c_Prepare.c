
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


struct TYPE_18__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_19__ {int b_sub_invalid; int b_has_subpictures; TYPE_1__* p_window; int * p_spu_blend; TYPE_5__* p_sub_pic; TYPE_15__* p_sub_window; int * p_sub_buffer_bounds; int p_prepared_pic; } ;
typedef TYPE_3__ vout_display_sys_t ;
typedef scalar_t__ vlc_tick_t ;
typedef int subpicture_t ;
struct TYPE_20__ {int p_sys; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_21__ {int format; } ;
struct TYPE_17__ {scalar_t__ b_opaque; } ;
struct TYPE_16__ {int fmt; } ;


 scalar_t__ AndroidOpaquePicture_CanReleaseAtTime (int ) ;
 int AndroidOpaquePicture_ReleaseAtTime (int ,scalar_t__) ;
 scalar_t__ AndroidWindow_Setup (TYPE_3__*,TYPE_15__*,int) ;
 TYPE_5__* PictureAlloc (TYPE_3__*,int *,int) ;
 scalar_t__ PoolLockPicture (int ) ;
 int PoolUnlockPicture (int ) ;
 int SubpicturePrepare (TYPE_2__*,int *) ;
 int VLC_OBJECT (TYPE_2__*) ;
 scalar_t__ VLC_TICK_FROM_SEC (int) ;
 int filter_DeleteBlend (int *) ;
 int * filter_NewBlend (int ,int *) ;
 int free (int *) ;
 int msg_Warn (TYPE_2__*,char*) ;
 int picture_Copy (int ,TYPE_4__*) ;
 int picture_Release (TYPE_5__*) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static void Prepare(vout_display_t *vd, picture_t *picture,
                    subpicture_t *subpicture, vlc_tick_t date)
{
    vout_display_sys_t *sys = vd->sys;

    if (!sys->p_window->b_opaque)
    {
        if (PoolLockPicture(sys->p_prepared_pic) == 0)
        {
            picture_Copy(sys->p_prepared_pic, picture);
            PoolUnlockPicture(sys->p_prepared_pic);
        }
    }

    if (subpicture && sys->p_sub_window) {
        if (sys->b_sub_invalid) {
            sys->b_sub_invalid = 0;
            if (sys->p_sub_pic) {
                picture_Release(sys->p_sub_pic);
                sys->p_sub_pic = ((void*)0);
            }
            if (sys->p_spu_blend) {
                filter_DeleteBlend(sys->p_spu_blend);
                sys->p_spu_blend = ((void*)0);
            }
            free(sys->p_sub_buffer_bounds);
            sys->p_sub_buffer_bounds = ((void*)0);
        }

        if (!sys->p_sub_pic
         && AndroidWindow_Setup(sys, sys->p_sub_window, 1) == 0)
            sys->p_sub_pic = PictureAlloc(sys, &sys->p_sub_window->fmt, 0);
        if (!sys->p_spu_blend && sys->p_sub_pic)
            sys->p_spu_blend = filter_NewBlend(VLC_OBJECT(vd),
                                               &sys->p_sub_pic->format);

        if (sys->p_sub_pic && sys->p_spu_blend)
            sys->b_has_subpictures = 1;
    }



    if (sys->b_has_subpictures)
    {
        SubpicturePrepare(vd, subpicture);
        if (!subpicture)
        {



            sys->b_has_subpictures = 0;
        }
    }
    if (sys->p_window->b_opaque
     && AndroidOpaquePicture_CanReleaseAtTime(picture->p_sys))
    {
        vlc_tick_t now = vlc_tick_now();
        if (date > now)
        {
            if (date - now <= VLC_TICK_FROM_SEC(1))
                AndroidOpaquePicture_ReleaseAtTime(picture->p_sys, date);
            else
                msg_Warn(vd, "picture way too early to release at time");
        }
    }
}
