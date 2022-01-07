
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int procLatch; } ;
struct TYPE_5__ {size_t num_elements; size_t read_upto; int lock; int * buffer; } ;
typedef int QueueResponseType ;
typedef TYPE_1__ MessageQueue ;
typedef int BgwMessage ;


 size_t BGW_MQ_MAX_MESSAGES ;
 TYPE_4__* BackendPidGetProc (scalar_t__) ;
 scalar_t__ InvalidPid ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MESSAGE_SENT ;
 int QUEUE_FULL ;
 int READER_DETACHED ;
 int SetLatch (int *) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ queue_get_reader (TYPE_1__*) ;

__attribute__((used)) static QueueResponseType
queue_add(MessageQueue *queue, BgwMessage *message)
{
 QueueResponseType message_result = QUEUE_FULL;

 LWLockAcquire(queue->lock, LW_EXCLUSIVE);
 if (queue->num_elements < BGW_MQ_MAX_MESSAGES)
 {
  memcpy(&queue->buffer[(queue->read_upto + queue->num_elements) % BGW_MQ_MAX_MESSAGES],
      message,
      sizeof(BgwMessage));
  queue->num_elements++;
  message_result = MESSAGE_SENT;
 }
 LWLockRelease(queue->lock);

 if (queue_get_reader(queue) != InvalidPid)
  SetLatch(&BackendPidGetProc(queue_get_reader(queue))->procLatch);
 else
  message_result = READER_DETACHED;
 return message_result;
}
