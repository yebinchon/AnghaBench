
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p; } ;
typedef TYPE_1__ vout_thread_t ;
struct TYPE_5__ {int display_lock; int * display; int dummy; } ;
typedef TYPE_2__ vout_thread_sys_t ;


 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_display_SetSize (int *,unsigned int,unsigned int) ;

void vout_ChangeDisplaySize(vout_thread_t *vout,
                            unsigned width, unsigned height)
{
    vout_thread_sys_t *sys = vout->p;

    assert(!sys->dummy);


    vlc_mutex_lock(&sys->display_lock);
    if (sys->display != ((void*)0))
        vout_display_SetSize(sys->display, width, height);
    vlc_mutex_unlock(&sys->display_lock);
}
