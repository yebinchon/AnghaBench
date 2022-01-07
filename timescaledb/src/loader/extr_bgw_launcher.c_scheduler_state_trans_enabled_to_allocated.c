
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; int * db_scheduler_handle; } ;
typedef TYPE_1__ DbHashEntry ;


 int ALLOCATED ;
 int Assert (int) ;
 scalar_t__ ENABLED ;
 int report_bgw_limit_exceeded (TYPE_1__*) ;
 int scheduler_modify_state (TYPE_1__*,int ) ;
 int ts_bgw_total_workers_increment () ;

__attribute__((used)) static void
scheduler_state_trans_enabled_to_allocated(DbHashEntry *entry)
{
 Assert(entry->state == ENABLED);
 Assert(entry->db_scheduler_handle == ((void*)0));

 if (!ts_bgw_total_workers_increment())
 {
  report_bgw_limit_exceeded(entry);
  return;
 }
 scheduler_modify_state(entry, ALLOCATED);
}
