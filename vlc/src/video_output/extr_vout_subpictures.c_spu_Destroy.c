
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p; } ;
typedef TYPE_2__ spu_t ;
struct TYPE_7__ {int thread; } ;
struct TYPE_9__ {TYPE_1__ prerender; } ;
typedef TYPE_3__ spu_private_t ;


 int spu_Cleanup (TYPE_2__*) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;
 int vlc_object_delete (TYPE_2__*) ;

void spu_Destroy(spu_t *spu)
{
    spu_private_t *sys = spu->p;

    vlc_cancel(sys->prerender.thread);
    vlc_join(sys->prerender.thread, ((void*)0));

    spu_Cleanup(spu);
    vlc_object_delete(spu);
}
