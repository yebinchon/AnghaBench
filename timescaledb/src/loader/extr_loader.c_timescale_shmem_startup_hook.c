
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prev_shmem_startup_hook () ;
 int ts_bgw_counter_shmem_startup () ;
 int ts_bgw_message_queue_shmem_startup () ;
 int ts_lwlocks_shmem_startup () ;

__attribute__((used)) static void
timescale_shmem_startup_hook(void)
{
 if (prev_shmem_startup_hook)
  prev_shmem_startup_hook();
 ts_bgw_counter_shmem_startup();
 ts_bgw_message_queue_shmem_startup();
 ts_lwlocks_shmem_startup();
}
