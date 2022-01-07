
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* p; } ;
typedef TYPE_2__ spu_t ;
typedef int input_thread_t ;
struct TYPE_6__ {int lock; int textlock; scalar_t__ text; int * input; } ;


 int FilterRelease (scalar_t__) ;
 scalar_t__ SpuRenderCreateAndLoadText (TYPE_2__*) ;
 int UpdateSPU (TYPE_2__*,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void spu_Attach(spu_t *spu, input_thread_t *input)
{
    vlc_mutex_lock(&spu->p->lock);
    if (spu->p->input != input) {
        UpdateSPU(spu, ((void*)0));

        spu->p->input = input;

        vlc_mutex_lock(&spu->p->textlock);
        if (spu->p->text)
            FilterRelease(spu->p->text);
        spu->p->text = SpuRenderCreateAndLoadText(spu);
        vlc_mutex_unlock(&spu->p->textlock);
    }
    vlc_mutex_unlock(&spu->p->lock);
}
