
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_5__ {unsigned int mask; int cond; int mutex; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;


 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void Inhibit (vlc_inhibit_t *ih, unsigned mask)
{
    vlc_inhibit_sys_t *sys = ih->p_sys;
    vlc_mutex_lock(&sys->mutex);
    sys->mask = mask;
    vlc_mutex_unlock(&sys->mutex);
    vlc_cond_signal(&sys->cond);
}
