
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bgw_counter_state_init () ;

extern void
ts_bgw_counter_shmem_startup(void)
{
 bgw_counter_state_init();
}
