
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* p; } ;
typedef TYPE_3__ vout_thread_t ;
struct TYPE_7__ {unsigned int num; unsigned int den; } ;
struct TYPE_8__ {TYPE_1__ dar; } ;
struct TYPE_10__ {int display_lock; int * display; int window_lock; TYPE_2__ source; int dummy; } ;
typedef TYPE_4__ vout_thread_sys_t ;


 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_SetDisplayAspect (int *,unsigned int,unsigned int) ;
 int vout_UpdateWindowSizeLocked (TYPE_3__*) ;

void vout_ChangeDisplayAspectRatio(vout_thread_t *vout,
                                   unsigned dar_num, unsigned dar_den)
{
    vout_thread_sys_t *sys = vout->p;
    assert(!sys->dummy);

    vlc_mutex_lock(&sys->window_lock);
    sys->source.dar.num = dar_num;
    sys->source.dar.den = dar_den;

    vout_UpdateWindowSizeLocked(vout);

    vlc_mutex_lock(&sys->display_lock);
    vlc_mutex_unlock(&sys->window_lock);

    if (sys->display != ((void*)0))
        vout_SetDisplayAspect(sys->display, dar_num, dar_den);
    vlc_mutex_unlock(&sys->display_lock);
}
