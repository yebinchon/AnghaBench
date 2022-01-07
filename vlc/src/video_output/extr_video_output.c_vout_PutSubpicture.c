
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p; } ;
typedef TYPE_1__ vout_thread_t ;
struct TYPE_5__ {int * spu; int dummy; } ;
typedef TYPE_2__ vout_thread_sys_t ;
typedef int subpicture_t ;


 int assert (int) ;
 int spu_PutSubpicture (int *,int *) ;
 int subpicture_Delete (int *) ;

void vout_PutSubpicture( vout_thread_t *vout, subpicture_t *subpic )
{
    vout_thread_sys_t *sys = vout->p;
    assert(!sys->dummy);

    if (sys->spu != ((void*)0))
        spu_PutSubpicture(sys->spu, subpic);
    else
        subpicture_Delete(subpic);
}
