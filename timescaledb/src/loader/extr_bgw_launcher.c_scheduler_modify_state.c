
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; scalar_t__ state_transition_failures; } ;
typedef scalar_t__ SchedulerState ;
typedef TYPE_1__ DbHashEntry ;


 int Assert (int) ;

__attribute__((used)) static void
scheduler_modify_state(DbHashEntry *entry, SchedulerState new_state)
{
 Assert(entry->state != new_state);
 entry->state_transition_failures = 0;
 entry->state = new_state;
}
