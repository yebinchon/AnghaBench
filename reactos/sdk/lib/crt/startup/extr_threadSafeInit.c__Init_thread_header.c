
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SwitchToThread () ;
 int _InterlockedCompareExchange (long*,int,int ) ;

void
_Init_thread_header(volatile int* ptss)
{
    while (1)
    {

        int oldTss = _InterlockedCompareExchange((long*)ptss, -1, 0);
        if (oldTss == -1)
        {

            SwitchToThread();
            continue;
        }



        break;
    }
}
