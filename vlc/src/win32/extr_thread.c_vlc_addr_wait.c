
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int WaitOnAddress (void*,unsigned int*,int,int) ;

void vlc_addr_wait(void *addr, unsigned val)
{
    WaitOnAddress(addr, &val, sizeof (val), -1);
}
