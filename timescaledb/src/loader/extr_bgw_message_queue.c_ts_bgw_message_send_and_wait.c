
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int shm_mq_handle ;
typedef int shm_mq ;
typedef int dsm_segment ;
struct TYPE_5__ {int ack_dsm_handle; } ;
typedef int Oid ;
typedef int BgwMessageType ;
typedef TYPE_1__ BgwMessage ;


 int BGW_ACK_QUEUE_SIZE ;
 int ERROR ;
 int MyProc ;
 TYPE_1__* bgw_message_create (int ,int ) ;
 int dsm_detach (int *) ;
 int * dsm_find_mapping (int ) ;
 int dsm_segment_address (int *) ;
 int enqueue_message_wait_for_ack (int ,TYPE_1__*,int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int mq ;
 int pfree (TYPE_1__*) ;
 int * shm_mq_attach (int *,int *,int *) ;
 int * shm_mq_create (int ,int ) ;
 int shm_mq_set_receiver (int *,int ) ;

extern bool
ts_bgw_message_send_and_wait(BgwMessageType message_type, Oid db_oid)
{
 shm_mq *ack_queue;
 dsm_segment *seg;
 shm_mq_handle *ack_queue_handle;
 BgwMessage *message;
 bool ack_received = 0;

 message = bgw_message_create(message_type, db_oid);

 seg = dsm_find_mapping(message->ack_dsm_handle);
 if (seg == ((void*)0))
  ereport(ERROR,
    (errmsg("TimescaleDB background worker dynamic shared memory segment not mapped")));
 ack_queue = shm_mq_create(dsm_segment_address(seg), BGW_ACK_QUEUE_SIZE);
 shm_mq_set_receiver(ack_queue, MyProc);
 ack_queue_handle = shm_mq_attach(ack_queue, seg, ((void*)0));
 if (ack_queue_handle != ((void*)0))
  ack_received = enqueue_message_wait_for_ack(mq, message, ack_queue_handle);
 dsm_detach(seg);
 pfree(message);
 return ack_received;
}
