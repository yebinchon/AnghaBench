
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
struct TYPE_8__ {int x; int y; int width; int height; } ;
struct TYPE_9__ {TYPE_1__ window; int mode; } ;
struct TYPE_10__ {TYPE_2__ crop; } ;
struct TYPE_12__ {int display_lock; int * display; int window_lock; TYPE_3__ source; int dummy; } ;
typedef TYPE_5__ vout_thread_sys_t ;


 int VOUT_CROP_WINDOW ;
 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_SetDisplayCrop (int *,int ,int ,int,int,int,int) ;
 int vout_UpdateWindowSizeLocked (TYPE_4__*) ;

void vout_ChangeCropWindow(vout_thread_t *vout,
                           int x, int y, int width, int height)
{
    vout_thread_sys_t *sys = vout->p;
    assert(!sys->dummy);

    if (x < 0)
        x = 0;
    if (y < 0)
        y = 0;
    if (width < 0)
        width = 0;
    if (height < 0)
        height = 0;

    vlc_mutex_lock(&sys->window_lock);
    sys->source.crop.mode = VOUT_CROP_WINDOW;
    sys->source.crop.window.x = x;
    sys->source.crop.window.y = y;
    sys->source.crop.window.width = width;
    sys->source.crop.window.height = height;

    vout_UpdateWindowSizeLocked(vout);

    vlc_mutex_lock(&sys->display_lock);
    vlc_mutex_unlock(&sys->window_lock);

    if (sys->display != ((void*)0))
        vout_SetDisplayCrop(sys->display, 0, 0, x, y, width, height);
    vlc_mutex_unlock(&sys->display_lock);
}
