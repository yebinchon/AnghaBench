
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void (* callback ) (void*) ;int lock; int interrupted; void* data; } ;
typedef TYPE_1__ vlc_interrupt_t ;


 int assert (int) ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vlc_interrupt_var ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void vlc_interrupt_prepare(vlc_interrupt_t *ctx,
                                  void (*cb)(void *), void *data)
{
    assert(ctx != ((void*)0));
    assert(ctx == vlc_interrupt_var);

    vlc_mutex_lock(&ctx->lock);
    assert(ctx->callback == ((void*)0));
    ctx->callback = cb;
    ctx->data = data;

    if (unlikely(ctx->interrupted))
        cb(data);
    vlc_mutex_unlock(&ctx->lock);
}
