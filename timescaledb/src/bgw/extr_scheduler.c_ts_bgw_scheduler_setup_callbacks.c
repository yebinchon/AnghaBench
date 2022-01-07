
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PointerGetDatum (int *) ;
 int before_shmem_exit (int ,int ) ;
 int bgw_scheduler_before_shmem_exit_callback ;

void
ts_bgw_scheduler_setup_callbacks()
{
 before_shmem_exit(bgw_scheduler_before_shmem_exit_callback, PointerGetDatum(((void*)0)));
}
