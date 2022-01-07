
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CounterState ;


 int RequestAddinShmemSpace (int) ;

extern void
ts_bgw_counter_shmem_alloc(void)
{
 RequestAddinShmemSpace(sizeof(CounterState));
}
