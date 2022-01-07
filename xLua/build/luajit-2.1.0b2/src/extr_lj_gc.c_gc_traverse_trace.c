
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int global_State ;
struct TYPE_6__ {scalar_t__ traceno; size_t nk; int startpt; scalar_t__ nextside; scalar_t__ nextroot; scalar_t__ link; TYPE_1__* ir; } ;
struct TYPE_5__ {scalar_t__ o; } ;
typedef size_t IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ GCtrace ;


 scalar_t__ IR_KGC ;
 size_t REF_TRUE ;
 int gc_markobj (int *,int ) ;
 int gc_marktrace (int *,scalar_t__) ;
 int gcref (int ) ;
 int ir_kgc (TYPE_1__*) ;

__attribute__((used)) static void gc_traverse_trace(global_State *g, GCtrace *T)
{
  IRRef ref;
  if (T->traceno == 0) return;
  for (ref = T->nk; ref < REF_TRUE; ref++) {
    IRIns *ir = &T->ir[ref];
    if (ir->o == IR_KGC)
      gc_markobj(g, ir_kgc(ir));
  }
  if (T->link) gc_marktrace(g, T->link);
  if (T->nextroot) gc_marktrace(g, T->nextroot);
  if (T->nextside) gc_marktrace(g, T->nextside);
  gc_markobj(g, gcref(T->startpt));
}
