
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; int * db_scheduler_handle; } ;
typedef TYPE_1__ DbHashEntry ;


 scalar_t__ ALLOCATED ;
 int Assert (int) ;
 int DISABLED ;
 int scheduler_modify_state (TYPE_1__*,int ) ;
 int ts_bgw_total_workers_decrement () ;

__attribute__((used)) static void
scheduler_state_trans_allocated_to_disabled(DbHashEntry *entry)
{
 Assert(entry->state == ALLOCATED);
 Assert(entry->db_scheduler_handle == ((void*)0));

 ts_bgw_total_workers_decrement();
 scheduler_modify_state(entry, DISABLED);
}
