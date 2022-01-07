
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef TYPE_2__* msegmentptr ;
struct TYPE_4__ {char* base; size_t size; struct TYPE_4__* next; } ;
struct TYPE_3__ {TYPE_2__ seg; } ;


 int CALL_MUNMAP (char*,size_t) ;

void lj_alloc_destroy(void *msp)
{
  mstate ms = (mstate)msp;
  msegmentptr sp = &ms->seg;
  while (sp != 0) {
    char *base = sp->base;
    size_t size = sp->size;
    sp = sp->next;
    CALL_MUNMAP(base, size);
  }
}
