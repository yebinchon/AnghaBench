
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef TYPE_2__* msegmentptr ;
struct TYPE_6__ {char* base; int size; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__ seg; } ;



__attribute__((used)) static int has_segment_link(mstate m, msegmentptr ss)
{
  msegmentptr sp = &m->seg;
  for (;;) {
    if ((char *)sp >= ss->base && (char *)sp < ss->base + ss->size)
      return 1;
    if ((sp = sp->next) == 0)
      return 0;
  }
}
