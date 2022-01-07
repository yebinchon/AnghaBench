
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_thread_t ;
typedef int vlc_interrupt_t ;


 int PF_LOCAL ;
 int SOCK_STREAM ;
 int VLC_THREAD_PRIORITY_LOW ;
 int alarm (int) ;
 int assert (int) ;
 int * fds ;
 int sem ;
 int test_context_simple (int *) ;
 int test_thread_cancel ;
 int test_thread_cleanup ;
 int test_thread_simple ;
 int unreachable_callback ;
 int vlc_cancel (int ) ;
 int vlc_clone (int *,int ,int *,int ) ;
 int vlc_close (int ) ;
 int * vlc_interrupt_create () ;
 int vlc_interrupt_destroy (int *) ;
 int vlc_interrupt_forward_start (int *,void**) ;
 scalar_t__ vlc_interrupt_forward_stop (void**) ;
 int vlc_interrupt_raise (int *) ;
 int vlc_interrupt_register (int ,int *) ;
 int vlc_interrupt_unregister () ;
 int vlc_join (int ,int *) ;
 scalar_t__ vlc_mwait_i11e (int) ;
 scalar_t__ vlc_poll_i11e (int *,int ,int) ;
 int vlc_sem_destroy (int *) ;
 int vlc_sem_init (int *,int ) ;
 int vlc_sem_post (int *) ;
 scalar_t__ vlc_sem_wait_i11e (int *) ;
 scalar_t__ vlc_socketpair (int ,int ,int ,int *,int) ;

int main (void)
{
    vlc_interrupt_t *ctx;
    vlc_thread_t th;

    alarm(2);

    ctx = vlc_interrupt_create();
    assert(ctx != ((void*)0));
    vlc_interrupt_destroy(ctx);

    vlc_sem_init(&sem, 0);
    ctx = vlc_interrupt_create();
    assert(ctx != ((void*)0));

    assert(vlc_socketpair(PF_LOCAL, SOCK_STREAM, 0, fds, 0) == 0);

    test_context_simple(ctx);

    assert(!vlc_clone(&th, test_thread_simple, ctx, VLC_THREAD_PRIORITY_LOW));
    vlc_interrupt_raise(ctx);
    vlc_sem_post(&sem);
    vlc_sem_post(&sem);
    vlc_join(th, ((void*)0));

    assert(!vlc_clone(&th, test_thread_cleanup, ctx, VLC_THREAD_PRIORITY_LOW));
    vlc_join(th, ((void*)0));

    assert(!vlc_clone(&th, test_thread_cancel, ctx, VLC_THREAD_PRIORITY_LOW));
    vlc_cancel(th);
    vlc_join(th, ((void*)0));

    vlc_interrupt_destroy(ctx);


    vlc_sem_post(&sem);
    assert(vlc_sem_wait_i11e(&sem) == 0);
    assert(vlc_mwait_i11e(1) == 0);
    assert(vlc_poll_i11e(((void*)0), 0, 1) == 0);

    vlc_interrupt_register(unreachable_callback, ((void*)0));
    vlc_interrupt_unregister();

    void *data[2];
    vlc_interrupt_forward_start(ctx, data);
    assert(vlc_interrupt_forward_stop(data) == 0);

    vlc_close(fds[1]);
    vlc_close(fds[0]);
    vlc_sem_destroy(&sem);
    return 0;
}
