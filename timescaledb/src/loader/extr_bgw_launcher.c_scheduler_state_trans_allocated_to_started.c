
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_5__ {scalar_t__ state; int vxid; int * db_scheduler_handle; int db_oid; } ;
typedef TYPE_1__ DbHashEntry ;


 scalar_t__ ALLOCATED ;
 int Assert (int) ;
 int STARTED ;
 int SetInvalidVirtualTransactionId (int ) ;
 int register_entrypoint_for_db (int ,int ,int **) ;
 int report_error_on_worker_register_failure (TYPE_1__*) ;
 int scheduler_modify_state (TYPE_1__*,int ) ;
 int wait_for_background_worker_startup (int *,int *) ;

__attribute__((used)) static void
scheduler_state_trans_allocated_to_started(DbHashEntry *entry)
{
 pid_t worker_pid;
 bool worker_registered;

 Assert(entry->state == ALLOCATED);
 Assert(entry->db_scheduler_handle == ((void*)0));

 worker_registered =
  register_entrypoint_for_db(entry->db_oid, entry->vxid, &entry->db_scheduler_handle);

 if (!worker_registered)
 {
  report_error_on_worker_register_failure(entry);
  return;
 }
 wait_for_background_worker_startup(entry->db_scheduler_handle, &worker_pid);
 SetInvalidVirtualTransactionId(entry->vxid);
 scheduler_modify_state(entry, STARTED);
}
