
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_elements; size_t read_upto; int lock; int * buffer; } ;
typedef TYPE_1__ MessageQueue ;
typedef int BgwMessage ;


 int BGW_MQ_MAX_MESSAGES ;
 int ERROR ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ MyProcPid ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int memcpy (int *,int *,int) ;
 int * palloc (int) ;
 scalar_t__ queue_get_reader (TYPE_1__*) ;

__attribute__((used)) static BgwMessage *
queue_remove(MessageQueue *queue)
{
 BgwMessage *message = ((void*)0);

 LWLockAcquire(queue->lock, LW_EXCLUSIVE);
 if (queue_get_reader(queue) != MyProcPid)
  ereport(ERROR,
    (errmsg(
     "cannot read if not reader for TimescaleDB background worker message queue")));

 if (queue->num_elements > 0)
 {
  message = palloc(sizeof(BgwMessage));
  memcpy(message, &queue->buffer[queue->read_upto], sizeof(BgwMessage));
  queue->read_upto = (queue->read_upto + 1) % BGW_MQ_MAX_MESSAGES;
  queue->num_elements--;
 }
 LWLockRelease(queue->lock);
 return message;
}
