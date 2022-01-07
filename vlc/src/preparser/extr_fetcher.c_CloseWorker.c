
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetcher_thread {int interrupt; int thread; } ;


 int VLC_UNUSED (void*) ;
 int free (struct fetcher_thread*) ;
 int vlc_interrupt_deinit (int *) ;
 int vlc_interrupt_kill (int *) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void CloseWorker( void* fetcher_, void* th_ )
{
    struct fetcher_thread* th = th_;
    VLC_UNUSED( fetcher_ );

    vlc_interrupt_kill( &th->interrupt );
    vlc_join( th->thread, ((void*)0) );
    vlc_interrupt_deinit( &th->interrupt );
    free( th );
}
