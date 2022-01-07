
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_spu_highlight_t ;
struct TYPE_6__ {TYPE_1__* p; } ;
typedef TYPE_2__ spu_t ;
struct TYPE_5__ {int lock; } ;


 int UpdateSPU (TYPE_2__*,int const*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void spu_SetHighlight(spu_t *spu, const vlc_spu_highlight_t *hl)
{
    vlc_mutex_lock(&spu->p->lock);
    UpdateSPU(spu, hl);
    vlc_mutex_unlock(&spu->p->lock);
}
