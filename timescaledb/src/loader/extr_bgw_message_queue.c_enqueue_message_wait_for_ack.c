
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ shm_mq_result ;
typedef int shm_mq_handle ;
typedef scalar_t__ Size ;
typedef scalar_t__ QueueResponseType ;
typedef int MessageQueue ;
typedef int BgwMessage ;


 int BGW_ACK_RETRIES ;
 int BGW_ACK_WAIT_INTERVAL ;
 int CHECK_FOR_INTERRUPTS () ;
 int DEBUG1 ;
 scalar_t__ MESSAGE_SENT ;
 int MyLatch ;
 int ResetLatch (int ) ;
 scalar_t__ SHM_MQ_SUCCESS ;
 scalar_t__ SHM_MQ_WOULD_BLOCK ;
 int WAIT_EVENT_MQ_INTERNAL ;
 int WL_LATCH_SET ;
 int WL_TIMEOUT ;
 int WaitLatch (int ,int,int ,...) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ queue_add (int *,int *) ;
 scalar_t__ shm_mq_receive (int *,scalar_t__*,void**,int) ;
 scalar_t__ ts_shm_mq_wait_for_attach (int *,int *) ;

__attribute__((used)) static bool
enqueue_message_wait_for_ack(MessageQueue *queue, BgwMessage *message,
        shm_mq_handle *ack_queue_handle)
{
 Size bytes_received = 0;
 QueueResponseType send_result;
 bool *data = ((void*)0);
 shm_mq_result mq_res;
 bool ack_received = 0;
 int n;
 send_result = queue_add(queue, message);
 if (send_result != MESSAGE_SENT)
  return 0;

 mq_res = ts_shm_mq_wait_for_attach(queue, ack_queue_handle);
 if (mq_res != SHM_MQ_SUCCESS)
  return 0;


 for (n = 1; n <= BGW_ACK_RETRIES; n++)
 {
  mq_res = shm_mq_receive(ack_queue_handle, &bytes_received, (void **) &data, 1);
  if (mq_res != SHM_MQ_WOULD_BLOCK)
   break;
  ereport(DEBUG1, (errmsg("TimescaleDB ack message receive failure, retrying")));



  WaitLatch(MyLatch,
      WL_LATCH_SET | WL_TIMEOUT,
      BGW_ACK_WAIT_INTERVAL,
      WAIT_EVENT_MQ_INTERNAL);

  ResetLatch(MyLatch);
  CHECK_FOR_INTERRUPTS();
 }

 if (mq_res != SHM_MQ_SUCCESS)
  return 0;

 ack_received = (bytes_received != 0) && *data;

 return ack_received;
}
