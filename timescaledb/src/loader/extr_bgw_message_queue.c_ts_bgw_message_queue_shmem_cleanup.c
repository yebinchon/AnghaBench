
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mq ;
 int queue_shmem_cleanup (int ) ;

extern void
ts_bgw_message_queue_shmem_cleanup(void)
{
 queue_shmem_cleanup(mq);
}
