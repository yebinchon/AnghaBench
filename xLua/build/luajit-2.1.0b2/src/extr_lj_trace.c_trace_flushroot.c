
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_8__ {scalar_t__ trace; } ;
struct TYPE_9__ {TYPE_2__ pt; } ;
struct TYPE_7__ {scalar_t__ root; scalar_t__ traceno; scalar_t__ nextroot; int startpt; } ;
typedef TYPE_1__ GCtrace ;
typedef TYPE_2__ GCproto ;


 TYPE_6__* gcref (int ) ;
 int lua_assert (int) ;
 int trace_unpatch (int *,TYPE_1__*) ;
 TYPE_1__* traceref (int *,scalar_t__) ;

__attribute__((used)) static void trace_flushroot(jit_State *J, GCtrace *T)
{
  GCproto *pt = &gcref(T->startpt)->pt;
  lua_assert(T->root == 0 && pt != ((void*)0));

  trace_unpatch(J, T);

  if (pt->trace == T->traceno) {
    pt->trace = T->nextroot;
  } else if (pt->trace) {
    GCtrace *T2 = traceref(J, pt->trace);
    if (T2) {
      for (; T2->nextroot; T2 = traceref(J, T2->nextroot))
 if (T2->nextroot == T->traceno) {
   T2->nextroot = T->nextroot;
   break;
 }
    }
  }
}
