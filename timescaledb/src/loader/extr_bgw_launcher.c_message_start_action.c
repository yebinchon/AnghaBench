
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int db_oid; } ;
struct TYPE_7__ {scalar_t__ state; } ;
typedef int HTAB ;
typedef TYPE_1__ DbHashEntry ;
typedef TYPE_2__ BgwMessage ;
typedef int AckResult ;


 int ACK_FAILURE ;
 int ACK_SUCCESS ;
 scalar_t__ DISABLED ;
 scalar_t__ STARTED ;
 TYPE_1__* db_hash_entry_create_if_not_exists (int *,int ) ;
 int scheduler_state_trans_automatic (TYPE_1__*) ;
 int scheduler_state_trans_disabled_to_enabled (TYPE_1__*) ;

__attribute__((used)) static AckResult
message_start_action(HTAB *db_htab, BgwMessage *message)
{
 DbHashEntry *entry;

 entry = db_hash_entry_create_if_not_exists(db_htab, message->db_oid);

 if (entry->state == DISABLED)
  scheduler_state_trans_disabled_to_enabled(entry);

 scheduler_state_trans_automatic(entry);

 return (entry->state == STARTED ? ACK_SUCCESS : ACK_FAILURE);
}
