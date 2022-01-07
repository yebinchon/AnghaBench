
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dsm_segment ;
struct TYPE_4__ {int sender_pid; int ack_dsm_handle; } ;
typedef size_t MessageAckSent ;
typedef TYPE_1__ BgwMessage ;


 size_t ACK_SENT ;
 int CommitTransactionCommand () ;
 int DEBUG1 ;
 int StartTransactionCommand () ;
 int * dsm_attach (int ) ;
 int dsm_detach (int *) ;
 int ereport (int ,int ) ;
 int errhint (char*,int ) ;
 int errmsg (char*,int ) ;
 int * message_ack_sent_err ;
 int pfree (TYPE_1__*) ;
 size_t send_ack (int *,int) ;

extern void
ts_bgw_message_send_ack(BgwMessage *message, bool success)
{
 dsm_segment *seg;
 seg = dsm_attach(message->ack_dsm_handle);
 if (seg != ((void*)0))
 {
  MessageAckSent ack_res;

  ack_res = send_ack(seg, success);
  if (ack_res != ACK_SENT)
   ereport(DEBUG1,
     (errmsg("TimescaleDB background worker launcher unable to send ack to backend "
       "pid %d",
       message->sender_pid),
      errhint("Reason: %s", message_ack_sent_err[ack_res])));
  dsm_detach(seg);
 }



 pfree(message);
}
