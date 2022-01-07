
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ baseslot; size_t maxslot; int * base; TYPE_2__* pt; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_6__ {size_t numparams; int flags; scalar_t__ framesize; } ;
typedef TYPE_2__ GCproto ;
typedef size_t BCReg ;


 scalar_t__ LJ_MAX_JSLOTS ;
 int LJ_TRERR_CJITOFF ;
 int LJ_TRERR_STACKOV ;
 int PROTO_NOJIT ;
 int TREF_NIL ;
 int lj_trace_err (TYPE_1__*,int ) ;

__attribute__((used)) static void rec_func_setup(jit_State *J)
{
  GCproto *pt = J->pt;
  BCReg s, numparams = pt->numparams;
  if ((pt->flags & PROTO_NOJIT))
    lj_trace_err(J, LJ_TRERR_CJITOFF);
  if (J->baseslot + pt->framesize >= LJ_MAX_JSLOTS)
    lj_trace_err(J, LJ_TRERR_STACKOV);

  for (s = J->maxslot; s < numparams; s++)
    J->base[s] = TREF_NIL;

  J->maxslot = numparams;
}
