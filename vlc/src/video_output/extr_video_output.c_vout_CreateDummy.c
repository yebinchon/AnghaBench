
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p; } ;
typedef TYPE_1__ vout_thread_t ;
struct TYPE_6__ {int dummy; } ;
typedef TYPE_2__ vout_thread_sys_t ;
typedef int vlc_object_t ;


 TYPE_1__* vout_CreateCommon (int *) ;

vout_thread_t *vout_CreateDummy(vlc_object_t *object)
{
    vout_thread_t *vout = vout_CreateCommon(object);
    if (!vout)
        return ((void*)0);

    vout_thread_sys_t *sys = vout->p;
    sys->dummy = 1;
    return vout;
}
