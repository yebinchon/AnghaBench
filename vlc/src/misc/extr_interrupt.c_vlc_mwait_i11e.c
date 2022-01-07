
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_6__ {int lock; int interrupted; } ;
typedef TYPE_1__ vlc_interrupt_t ;
typedef int vlc_cond_t ;


 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int ,TYPE_1__*) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_init (int *) ;
 scalar_t__ vlc_cond_timedwait (int *,int *,int ) ;
 int vlc_interrupt_finish (TYPE_1__*) ;
 int vlc_interrupt_prepare (TYPE_1__*,int ,int *) ;
 TYPE_1__* vlc_interrupt_var ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_mwait_i11e_cleanup ;
 int vlc_mwait_i11e_wake ;
 int vlc_tick_wait (int ) ;

int vlc_mwait_i11e(vlc_tick_t deadline)
{
    vlc_interrupt_t *ctx = vlc_interrupt_var;
    if (ctx == ((void*)0))
        return vlc_tick_wait(deadline), 0;

    vlc_cond_t wait;
    vlc_cond_init(&wait);

    vlc_interrupt_prepare(ctx, vlc_mwait_i11e_wake, &wait);

    vlc_mutex_lock(&ctx->lock);
    vlc_cleanup_push(vlc_mwait_i11e_cleanup, ctx);
    while (!ctx->interrupted
        && vlc_cond_timedwait(&wait, &ctx->lock, deadline) == 0);
    vlc_cleanup_pop();
    vlc_mutex_unlock(&ctx->lock);

    int ret = vlc_interrupt_finish(ctx);
    vlc_cond_destroy(&wait);
    return ret;
}
