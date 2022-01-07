
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p; } ;
typedef TYPE_1__ vout_thread_t ;
struct TYPE_7__ {int * display; int dummy; } ;
typedef TYPE_2__ vout_thread_sys_t ;


 int assert (int) ;
 int vout_DisableWindow (TYPE_1__*) ;
 int vout_StopDisplay (TYPE_1__*) ;

void vout_Stop(vout_thread_t *vout)
{
    vout_thread_sys_t *sys = vout->p;
    assert(!sys->dummy);

    if (sys->display != ((void*)0))
        vout_StopDisplay(vout);

    vout_DisableWindow(vout);
}
