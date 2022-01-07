
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WakeByAddressAll (void*) ;

void vlc_addr_broadcast(void *addr)
{
    WakeByAddressAll(addr);
}
