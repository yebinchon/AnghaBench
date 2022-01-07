
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_4__ {int mutex; int cond; int thread; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;


 int vlc_cancel (int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void CloseInhibit (vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t*)obj;
    vlc_inhibit_sys_t* sys = ih->p_sys;
    vlc_cancel(sys->thread);
    vlc_join(sys->thread, ((void*)0));
    vlc_cond_destroy(&sys->cond);
    vlc_mutex_destroy(&sys->mutex);
}
