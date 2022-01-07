
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
struct TYPE_8__ {int left; int right; int top; int bottom; } ;
struct TYPE_9__ {TYPE_1__ border; int mode; } ;
struct TYPE_10__ {TYPE_2__ crop; } ;
struct TYPE_12__ {int display_lock; int * display; int window_lock; TYPE_3__ source; int dummy; } ;
typedef TYPE_5__ vout_thread_sys_t ;


 int VOUT_CROP_BORDER ;
 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_SetDisplayCrop (int *,int ,int ,int,int,int,int) ;
 int vout_UpdateWindowSizeLocked (TYPE_4__*) ;

void vout_ChangeCropBorder(vout_thread_t *vout,
                           int left, int top, int right, int bottom)
{
    vout_thread_sys_t *sys = vout->p;
    assert(!sys->dummy);

    if (left < 0)
        left = 0;
    if (top < 0)
        top = 0;
    if (right < 0)
        right = 0;
    if (bottom < 0)
        bottom = 0;

    vlc_mutex_lock(&sys->window_lock);
    sys->source.crop.mode = VOUT_CROP_BORDER;
    sys->source.crop.border.left = left;
    sys->source.crop.border.right = right;
    sys->source.crop.border.top = top;
    sys->source.crop.border.bottom = bottom;

    vout_UpdateWindowSizeLocked(vout);

    vlc_mutex_lock(&sys->display_lock);
    vlc_mutex_unlock(&sys->window_lock);

    if (sys->display != ((void*)0))
        vout_SetDisplayCrop(sys->display, 0, 0,
                            left, top, -right, -bottom);
    vlc_mutex_unlock(&sys->display_lock);
}
