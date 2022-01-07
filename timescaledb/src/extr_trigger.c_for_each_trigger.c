
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* trigger_handler ) (int *,void*) ;
struct TYPE_5__ {int numtriggers; int * triggers; } ;
typedef TYPE_1__ TriggerDesc ;
typedef int Trigger ;
struct TYPE_6__ {TYPE_1__* trigdesc; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int relation_close (TYPE_2__*,int ) ;
 TYPE_2__* relation_open (int ,int ) ;

__attribute__((used)) static inline void
for_each_trigger(Oid relid, trigger_handler on_trigger, void *arg)
{
 Relation rel;

 rel = relation_open(relid, AccessShareLock);

 if (rel->trigdesc != ((void*)0))
 {
  TriggerDesc *trigdesc = rel->trigdesc;
  int i;

  for (i = 0; i < trigdesc->numtriggers; i++)
  {
   Trigger *trigger = &trigdesc->triggers[i];

   if (!on_trigger(trigger, arg))
    break;
  }
 }

 relation_close(rel, AccessShareLock);
}
