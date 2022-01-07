
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p; } ;
typedef TYPE_1__ vout_thread_t ;
struct TYPE_6__ {int * display_pool; scalar_t__ private_pool; } ;
typedef TYPE_2__ vout_thread_sys_t ;
typedef int vout_display_t ;


 int Forward ;
 int assert (int) ;
 int picture_pool_Release (scalar_t__) ;
 int var_DelCallback (TYPE_1__*,char*,int ,int *) ;
 int vout_display_Delete (int *) ;

void vout_CloseWrapper(vout_thread_t *vout, vout_display_t *vd)
{
    vout_thread_sys_t *sys = vout->p;

    assert(sys->display_pool && sys->private_pool);

    picture_pool_Release(sys->private_pool);
    sys->display_pool = ((void*)0);





    vout_display_Delete(vd);
}
