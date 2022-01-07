
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetcher_thread {int active; } ;


 int VLC_UNUSED (void*) ;
 int atomic_load (int *) ;

__attribute__((used)) static int ProbeWorker( void* fetcher_, void* th_ )
{
    return !atomic_load( &((struct fetcher_thread*)th_)->active );
    VLC_UNUSED( fetcher_ );
}
