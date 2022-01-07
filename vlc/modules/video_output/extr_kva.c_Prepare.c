
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sys; } ;
typedef TYPE_1__ vout_display_t ;
typedef int * vlc_tick_t ;
typedef int subpicture_t ;
typedef int picture_t ;


 scalar_t__ KVALock (int ,int *) ;
 int KVAUnlock (int *) ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int picture_CopyPixels (int *,int *) ;

__attribute__((used)) static void Prepare(vout_display_t *vd, picture_t *pic, subpicture_t *subpic, vlc_tick_t date)
{
    VLC_UNUSED(subpic);
    VLC_UNUSED(date);
    picture_t fake_pic = *pic;
    if (KVALock(vd->sys, &fake_pic) == VLC_SUCCESS)
    {
        picture_CopyPixels(&fake_pic, pic);
        KVAUnlock(&fake_pic);
    }
}
