
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p; } ;
typedef TYPE_1__ spu_t ;
struct TYPE_5__ {int lock; int * input; } ;


 int spu_PrerenderPause (TYPE_2__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void spu_Detach(spu_t *spu)
{
    vlc_mutex_lock(&spu->p->lock);
    spu_PrerenderPause(spu->p);
    spu->p->input = ((void*)0);
    vlc_mutex_unlock(&spu->p->lock);
}
