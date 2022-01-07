
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;


 int CLOCK_FREQ ;
 scalar_t__ EINTR ;
 int assert (int) ;
 scalar_t__ errno ;
 int * fds ;
 int interrupt_callback ;
 int sem ;
 scalar_t__ vlc_accept_i11e (int ,int *,int *,int) ;
 int vlc_interrupt_raise (int *) ;
 int vlc_interrupt_register (int ,int *) ;
 int * vlc_interrupt_set (int *) ;
 int vlc_interrupt_unregister () ;
 scalar_t__ vlc_mwait_i11e (int) ;
 int vlc_poll_i11e (int *,int ,int) ;
 int vlc_read_i11e (int ,char*,int) ;
 int vlc_recvfrom_i11e (int ,char*,int,int ,int *,int ) ;
 int vlc_sem_post (int *) ;
 int vlc_sem_wait (int *) ;
 scalar_t__ vlc_sem_wait_i11e (int *) ;
 int vlc_sendto_i11e (int ,char*,int,int ,int *,int ) ;
 int vlc_write_i11e (int ,char*,int) ;

__attribute__((used)) static void test_context_simple(vlc_interrupt_t *ctx)
{
    vlc_interrupt_t *octx;
    char c;

    vlc_interrupt_set(ctx);
    octx = vlc_interrupt_set(((void*)0));
    assert(octx == ctx);
    octx = vlc_interrupt_set(ctx);
    assert(octx == ((void*)0));
    octx = vlc_interrupt_set(ctx);
    assert(octx == ctx);

    vlc_interrupt_register(interrupt_callback, &sem);
    vlc_interrupt_raise(ctx);
    vlc_sem_wait(&sem);
    vlc_interrupt_unregister();




    vlc_sem_post(&sem);
    assert(vlc_sem_wait_i11e(&sem) == 0);

    vlc_interrupt_raise(ctx);
    assert(vlc_sem_wait_i11e(&sem) == EINTR);

    vlc_sem_post(&sem);
    vlc_interrupt_raise(ctx);
    assert(vlc_sem_wait_i11e(&sem) == EINTR);
    assert(vlc_sem_wait_i11e(&sem) == 0);

    vlc_interrupt_raise(ctx);
    vlc_sem_post(&sem);
    assert(vlc_sem_wait_i11e(&sem) == EINTR);
    assert(vlc_sem_wait_i11e(&sem) == 0);

    assert(vlc_mwait_i11e(1) == 0);
    vlc_interrupt_raise(ctx);
    assert(vlc_mwait_i11e(CLOCK_FREQ * 10000000) == EINTR);

    assert(vlc_poll_i11e(((void*)0), 0, 1) == 0);
    vlc_interrupt_raise(ctx);
    assert(vlc_poll_i11e(((void*)0), 0, 1000000000) == -1);
    assert(errno == EINTR);

    c = 12;
    assert(vlc_write_i11e(fds[0], &c, 1) == 1);
    c = 0;
    assert(vlc_read_i11e(fds[1], &c, 1) == 1 && c == 12);
    vlc_interrupt_raise(ctx);
    assert(vlc_read_i11e(fds[1], &c, 1) == -1);
    assert(errno == EINTR);

    c = 42;
    assert(vlc_sendto_i11e(fds[0], &c, 1, 0, ((void*)0), 0) == 1);
    c = 0;
    assert(vlc_recvfrom_i11e(fds[1], &c, 1, 0, ((void*)0), 0) == 1 && c == 42);
    vlc_interrupt_raise(ctx);
    assert(vlc_recvfrom_i11e(fds[1], &c, 1, 0, ((void*)0), 0) == -1);
    assert(errno == EINTR);

    vlc_interrupt_raise(ctx);
    assert(vlc_accept_i11e(fds[1], ((void*)0), ((void*)0), 1) < 0);

    octx = vlc_interrupt_set(((void*)0));
    assert(octx == ctx);
    octx = vlc_interrupt_set(((void*)0));
    assert(octx == ((void*)0));
}
