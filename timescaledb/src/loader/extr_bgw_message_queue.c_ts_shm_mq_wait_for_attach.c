
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shm_mq_result ;
typedef int shm_mq_handle ;
typedef int PGPROC ;
typedef int MessageQueue ;


 int BGW_MQ_NUM_WAITS ;
 int BGW_MQ_WAIT_INTERVAL ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ InvalidPid ;
 int MyLatch ;
 int ResetLatch (int ) ;
 int SHM_MQ_DETACHED ;
 int SHM_MQ_SUCCESS ;
 int WAIT_EVENT_MQ_INTERNAL ;
 int WL_LATCH_SET ;
 int WL_TIMEOUT ;
 int WaitLatch (int ,int,int ,...) ;
 scalar_t__ queue_get_reader (int *) ;
 int shm_mq_get_queue (int *) ;
 int * shm_mq_get_sender (int ) ;

__attribute__((used)) static shm_mq_result
ts_shm_mq_wait_for_attach(MessageQueue *queue, shm_mq_handle *ack_queue_handle)
{
 int n;
 PGPROC *reader_proc;

 for (n = 1; n <= BGW_MQ_NUM_WAITS; n++)
 {

  reader_proc = shm_mq_get_sender(shm_mq_get_queue(ack_queue_handle));
  if (reader_proc != ((void*)0))
   return SHM_MQ_SUCCESS;
  else if (queue_get_reader(queue) == InvalidPid)
   return SHM_MQ_DETACHED;




  WaitLatch(MyLatch, WL_LATCH_SET | WL_TIMEOUT, BGW_MQ_WAIT_INTERVAL, WAIT_EVENT_MQ_INTERNAL);


  ResetLatch(MyLatch);
  CHECK_FOR_INTERRUPTS();
 }
 return SHM_MQ_DETACHED;
}
