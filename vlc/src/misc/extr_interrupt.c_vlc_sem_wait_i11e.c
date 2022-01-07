
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;
typedef int vlc_interrupt_t ;


 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int ,int *) ;
 int vlc_interrupt_cleanup ;
 int vlc_interrupt_finish (int *) ;
 int vlc_interrupt_prepare (int *,int ,int *) ;
 int vlc_interrupt_sem ;
 int * vlc_interrupt_var ;
 int vlc_sem_wait (int *) ;

int vlc_sem_wait_i11e(vlc_sem_t *sem)
{
    vlc_interrupt_t *ctx = vlc_interrupt_var;
    if (ctx == ((void*)0))
        return vlc_sem_wait(sem), 0;

    vlc_interrupt_prepare(ctx, vlc_interrupt_sem, sem);

    vlc_cleanup_push(vlc_interrupt_cleanup, ctx);
    vlc_sem_wait(sem);
    vlc_cleanup_pop();

    return vlc_interrupt_finish(ctx);
}
