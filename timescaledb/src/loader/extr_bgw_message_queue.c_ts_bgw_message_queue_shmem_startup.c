
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int queue_init () ;

extern void
ts_bgw_message_queue_shmem_startup(void)
{
 queue_init();
}
