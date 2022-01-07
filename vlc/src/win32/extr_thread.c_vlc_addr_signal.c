
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WakeByAddressSingle (void*) ;

void vlc_addr_signal(void *addr)
{
    WakeByAddressSingle(addr);
}
