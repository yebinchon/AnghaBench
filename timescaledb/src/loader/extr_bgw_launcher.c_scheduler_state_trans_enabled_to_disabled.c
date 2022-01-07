
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; int * db_scheduler_handle; } ;
typedef TYPE_1__ DbHashEntry ;


 int Assert (int) ;
 int DISABLED ;
 scalar_t__ ENABLED ;
 int scheduler_modify_state (TYPE_1__*,int ) ;

__attribute__((used)) static void
scheduler_state_trans_enabled_to_disabled(DbHashEntry *entry)
{
 Assert(entry->state == ENABLED);
 Assert(entry->db_scheduler_handle == ((void*)0));
 scheduler_modify_state(entry, DISABLED);
}
