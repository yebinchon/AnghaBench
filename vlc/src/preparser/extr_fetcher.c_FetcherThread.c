
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetcher_thread {int worker; int active; int req; int fetcher; int (* pf_worker ) (int ,int ) ;int interrupt; } ;


 int atomic_store (int *,int) ;
 int background_worker_RequestProbe (int ) ;
 int stub1 (int ,int ) ;
 int vlc_interrupt_set (int *) ;

__attribute__((used)) static void* FetcherThread( void* handle )
{
    struct fetcher_thread* th = handle;
    vlc_interrupt_set( &th->interrupt );

    th->pf_worker( th->fetcher, th->req );

    atomic_store( &th->active, 0 );
    background_worker_RequestProbe( th->worker );
    return ((void*)0);
}
