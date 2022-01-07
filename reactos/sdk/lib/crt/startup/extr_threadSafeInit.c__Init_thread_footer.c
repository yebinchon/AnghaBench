
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _Init_global_epoch ;
 int _InterlockedIncrement (int *) ;

void
_Init_thread_footer(volatile int* ptss)
{

    *ptss = _InterlockedIncrement(&_Init_global_epoch);
}
