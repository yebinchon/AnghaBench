
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int VirtualTransactionId ;
struct TYPE_7__ {int message_type; int sender_pid; } ;
typedef int PGPROC ;
typedef int HTAB ;
typedef TYPE_1__ BgwMessage ;
typedef int AckResult ;


 int ACK_FAILURE ;
 int * BackendPidGetProc (int ) ;
 int GET_VXID_FROM_PGPROC (int ,int ) ;
 int LOG ;



 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int message_restart_action (int *,TYPE_1__*,int ) ;
 int message_start_action (int *,TYPE_1__*) ;
 int message_stop_action (int *,TYPE_1__*) ;
 TYPE_1__* ts_bgw_message_receive () ;
 int ts_bgw_message_send_ack (TYPE_1__*,int ) ;

__attribute__((used)) static bool
launcher_handle_message(HTAB *db_htab)
{
 BgwMessage *message = ts_bgw_message_receive();
 PGPROC *sender;
 VirtualTransactionId vxid;
 AckResult action_result = ACK_FAILURE;

 if (message == ((void*)0))
  return 0;

 sender = BackendPidGetProc(message->sender_pid);
 if (sender == ((void*)0))
 {
  ereport(LOG,
    (errmsg("TimescaleDB background worker launcher received message from non-existent "
      "backend")));
  return 1;
 }

 GET_VXID_FROM_PGPROC(vxid, *sender);

 switch (message->message_type)
 {
  case 129:
   action_result = message_start_action(db_htab, message);
   break;
  case 128:
   action_result = message_stop_action(db_htab, message);
   break;
  case 130:
   action_result = message_restart_action(db_htab, message, vxid);
   break;
 }

 ts_bgw_message_send_ack(message, action_result);
 return 1;
}
