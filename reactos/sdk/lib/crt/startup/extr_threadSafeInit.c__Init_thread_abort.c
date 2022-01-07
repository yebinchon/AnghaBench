
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _InterlockedAnd (long volatile*,int ) ;

void
_Init_thread_abort(volatile int* ptss)
{

    _InterlockedAnd((volatile long*)ptss, 0);
}
