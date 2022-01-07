
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int db_oid; } ;
struct TYPE_8__ {int state; int db_scheduler_handle; } ;
typedef int HTAB ;
typedef TYPE_1__ DbHashEntry ;
typedef TYPE_2__ BgwMessage ;
typedef int AckResult ;


 int ACK_FAILURE ;
 int ACK_SUCCESS ;




 TYPE_1__* db_hash_entry_create_if_not_exists (int *,int ) ;
 int scheduler_state_trans_allocated_to_disabled (TYPE_1__*) ;
 int scheduler_state_trans_enabled_to_disabled (TYPE_1__*) ;
 int scheduler_state_trans_started_to_disabled (TYPE_1__*) ;
 int terminate_background_worker (int ) ;
 int wait_for_background_worker_shutdown (int ) ;

__attribute__((used)) static AckResult
message_stop_action(HTAB *db_htab, BgwMessage *message)
{
 DbHashEntry *entry;







 entry = db_hash_entry_create_if_not_exists(db_htab, message->db_oid);

 switch (entry->state)
 {
  case 129:
   scheduler_state_trans_enabled_to_disabled(entry);
   break;
  case 131:
   scheduler_state_trans_allocated_to_disabled(entry);
   break;
  case 128:
   terminate_background_worker(entry->db_scheduler_handle);
   wait_for_background_worker_shutdown(entry->db_scheduler_handle);
   scheduler_state_trans_started_to_disabled(entry);
   break;
  case 130:
   break;
 }
 return entry->state == 130 ? ACK_SUCCESS : ACK_FAILURE;
}
