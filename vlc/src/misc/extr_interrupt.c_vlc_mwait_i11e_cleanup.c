
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int * data; } ;
typedef TYPE_1__ vlc_interrupt_t ;
typedef int vlc_cond_t ;


 int vlc_cond_destroy (int *) ;
 int vlc_interrupt_finish (TYPE_1__*) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void vlc_mwait_i11e_cleanup(void *opaque)
{
    vlc_interrupt_t *ctx = opaque;
    vlc_cond_t *cond = ctx->data;

    vlc_mutex_unlock(&ctx->lock);
    vlc_interrupt_finish(ctx);
    vlc_cond_destroy(cond);
}
