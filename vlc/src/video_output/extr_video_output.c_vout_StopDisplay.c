
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p; } ;
typedef TYPE_1__ vout_thread_t ;
struct TYPE_6__ {int thread; } ;
typedef TYPE_2__ vout_thread_sys_t ;


 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;
 int vout_ReleaseDisplay (TYPE_1__*) ;

void vout_StopDisplay(vout_thread_t *vout)
{
    vout_thread_sys_t *sys = vout->p;

    vlc_cancel(sys->thread);
    vlc_join(sys->thread, ((void*)0));

    vout_ReleaseDisplay(vout);
}
