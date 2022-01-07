
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tgoldtable; int tgnewtable; } ;
typedef TYPE_1__ Trigger ;


 scalar_t__ TRIGGER_USES_TRANSITION_TABLE (int ) ;

__attribute__((used)) static bool
check_for_transition_table(Trigger *trigger, void *arg)
{
 bool *found = arg;

 if (TRIGGER_USES_TRANSITION_TABLE(trigger->tgnewtable) ||
  TRIGGER_USES_TRANSITION_TABLE(trigger->tgoldtable))
 {
  *found = 1;
  return 0;
 }

 return 1;
}
