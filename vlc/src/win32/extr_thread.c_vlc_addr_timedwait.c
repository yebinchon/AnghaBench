
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int val ;


 int WaitOnAddress (void*,unsigned int*,int,int) ;

bool vlc_addr_timedwait(void *addr, unsigned val, vlc_tick_t delay)
{
    delay = (delay + (1000-1)) / 1000;

    if (delay > 0x7fffffff)
    {
        WaitOnAddress(addr, &val, sizeof (val), 0x7fffffff);
        return 1;
    }

    return WaitOnAddress(addr, &val, sizeof (val), delay);
}
