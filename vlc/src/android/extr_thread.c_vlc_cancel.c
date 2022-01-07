
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vlc_thread_t ;
typedef int atomic_int ;
struct TYPE_4__ {int lock; int * addr; } ;
struct TYPE_5__ {TYPE_1__ wait; int killed; } ;


 int atomic_fetch_or_explicit (int *,int,int ) ;
 int atomic_store (int *,int) ;
 int memory_order_relaxed ;
 int vlc_addr_broadcast (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlc_cancel (vlc_thread_t thread_id)
{
    atomic_int *addr;

    atomic_store(&thread_id->killed, 1);

    vlc_mutex_lock(&thread_id->wait.lock);
    addr = thread_id->wait.addr;
    if (addr != ((void*)0))
    {
        atomic_fetch_or_explicit(addr, 1, memory_order_relaxed);
        vlc_addr_broadcast(addr);
    }
    vlc_mutex_unlock(&thread_id->wait.lock);
}
