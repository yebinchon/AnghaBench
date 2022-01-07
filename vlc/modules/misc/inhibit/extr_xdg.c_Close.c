
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_5__ {int attr; int timer; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;


 int free (TYPE_2__*) ;
 int posix_spawnattr_destroy (int *) ;
 int vlc_timer_destroy (int ) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t *)obj;
    vlc_inhibit_sys_t *p_sys = ih->p_sys;

    vlc_timer_destroy (p_sys->timer);
    posix_spawnattr_destroy (&p_sys->attr);
    free (p_sys);
}
