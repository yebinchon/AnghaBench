
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state; int db_scheduler_handle; } ;
typedef TYPE_1__ DbHashEntry ;



 int BGWH_STOPPED ;



 int get_background_worker_pid (int ,int *) ;
 int scheduler_state_trans_allocated_to_started (TYPE_1__*) ;
 int scheduler_state_trans_enabled_to_allocated (TYPE_1__*) ;
 int scheduler_state_trans_started_to_disabled (TYPE_1__*) ;

__attribute__((used)) static void
scheduler_state_trans_automatic(DbHashEntry *entry)
{
 switch (entry->state)
 {
  case 129:
   scheduler_state_trans_enabled_to_allocated(entry);
   if (entry->state == 131)
    scheduler_state_trans_allocated_to_started(entry);
   break;
  case 131:
   scheduler_state_trans_allocated_to_started(entry);
   break;
  case 128:
   if (get_background_worker_pid(entry->db_scheduler_handle, ((void*)0)) == BGWH_STOPPED)
    scheduler_state_trans_started_to_disabled(entry);
   break;
  case 130:
   break;
 }
}
