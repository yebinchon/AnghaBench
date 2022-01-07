
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VirtualTransactionId ;
struct TYPE_9__ {int db_oid; } ;
struct TYPE_8__ {int state; int db_scheduler_handle; int vxid; } ;
typedef int HTAB ;
typedef TYPE_1__ DbHashEntry ;
typedef TYPE_2__ BgwMessage ;
typedef int AckResult ;


 int ACK_FAILURE ;
 int ACK_SUCCESS ;




 TYPE_1__* db_hash_entry_create_if_not_exists (int *,int ) ;
 int scheduler_state_trans_automatic (TYPE_1__*) ;
 int scheduler_state_trans_disabled_to_enabled (TYPE_1__*) ;
 int scheduler_state_trans_started_to_allocated (TYPE_1__*) ;
 int terminate_background_worker (int ) ;
 int wait_for_background_worker_shutdown (int ) ;

__attribute__((used)) static AckResult
message_restart_action(HTAB *db_htab, BgwMessage *message, VirtualTransactionId vxid)
{
 DbHashEntry *entry;

 entry = db_hash_entry_create_if_not_exists(db_htab, message->db_oid);

 entry->vxid = vxid;

 switch (entry->state)
 {
  case 129:
   break;
  case 131:
   break;
  case 128:
   terminate_background_worker(entry->db_scheduler_handle);
   wait_for_background_worker_shutdown(entry->db_scheduler_handle);
   scheduler_state_trans_started_to_allocated(entry);
   break;
  case 130:
   scheduler_state_trans_disabled_to_enabled(entry);
 }

 scheduler_state_trans_automatic(entry);
 return entry->state == 128 ? ACK_SUCCESS : ACK_FAILURE;
}
