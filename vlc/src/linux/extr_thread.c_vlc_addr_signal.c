
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_futex_wake (void*,int) ;

void vlc_addr_signal(void *addr)
{
    vlc_futex_wake(addr, 1);
}
