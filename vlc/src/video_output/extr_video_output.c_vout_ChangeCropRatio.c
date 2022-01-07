
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_5__* p; } ;
typedef TYPE_4__ vout_thread_t ;
struct TYPE_8__ {unsigned int num; unsigned int den; } ;
struct TYPE_9__ {int mode; TYPE_1__ ratio; } ;
struct TYPE_10__ {TYPE_2__ crop; } ;
struct TYPE_12__ {int display_lock; int * display; int window_lock; TYPE_3__ source; int dummy; } ;
typedef TYPE_5__ vout_thread_sys_t ;


 int VOUT_CROP_NONE ;
 int VOUT_CROP_RATIO ;
 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_SetDisplayCrop (int *,unsigned int,unsigned int,int ,int ,int ,int ) ;
 int vout_UpdateWindowSizeLocked (TYPE_4__*) ;

void vout_ChangeCropRatio(vout_thread_t *vout, unsigned num, unsigned den)
{
    vout_thread_sys_t *sys = vout->p;
    assert(!sys->dummy);

    vlc_mutex_lock(&sys->window_lock);
    if (num != 0 && den != 0) {
        sys->source.crop.mode = VOUT_CROP_RATIO;
        sys->source.crop.ratio.num = num;
        sys->source.crop.ratio.den = den;
    } else
        sys->source.crop.mode = VOUT_CROP_NONE;

    vout_UpdateWindowSizeLocked(vout);

    vlc_mutex_lock(&sys->display_lock);
    vlc_mutex_unlock(&sys->window_lock);

    if (sys->display != ((void*)0))
        vout_SetDisplayCrop(sys->display, num, den, 0, 0, 0, 0);
    vlc_mutex_unlock(&sys->display_lock);
}
