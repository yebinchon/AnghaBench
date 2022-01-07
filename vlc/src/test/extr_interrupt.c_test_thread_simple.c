
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;


 scalar_t__ EINTR ;
 int assert (int) ;
 int sem ;
 int test_context_simple (int *) ;
 int vlc_interrupt_set (int *) ;
 int vlc_sem_wait (int *) ;
 scalar_t__ vlc_sem_wait_i11e (int *) ;

__attribute__((used)) static void *test_thread_simple(void *data)
{
    vlc_interrupt_t *ctx = data;

    vlc_interrupt_set(ctx);
    assert(vlc_sem_wait_i11e(&sem) == EINTR);
    assert(vlc_sem_wait_i11e(&sem) == 0);
    vlc_sem_wait(&sem);

    test_context_simple(ctx);
    return ((void*)0);
}
