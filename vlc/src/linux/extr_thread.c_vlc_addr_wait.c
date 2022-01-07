
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_futex_wait (void*,unsigned int,int *) ;

void vlc_addr_wait(void *addr, unsigned val)
{
    vlc_futex_wait(addr, val, ((void*)0));
}
