
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; int * db_scheduler_handle; } ;
typedef TYPE_1__ DbHashEntry ;


 int ALLOCATED ;
 int Assert (int) ;
 scalar_t__ BGWH_STOPPED ;
 scalar_t__ STARTED ;
 scalar_t__ get_background_worker_pid (int *,int *) ;
 int pfree (int *) ;
 int scheduler_modify_state (TYPE_1__*,int ) ;

__attribute__((used)) static void
scheduler_state_trans_started_to_allocated(DbHashEntry *entry)
{
 Assert(entry->state == STARTED);
 Assert(get_background_worker_pid(entry->db_scheduler_handle, ((void*)0)) == BGWH_STOPPED);
 if (entry->db_scheduler_handle != ((void*)0))
 {
  pfree(entry->db_scheduler_handle);
  entry->db_scheduler_handle = ((void*)0);
 }
 scheduler_modify_state(entry, ALLOCATED);
}
