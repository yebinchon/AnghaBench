
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_6__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_7__ {scalar_t__ framedepth; int maxslot; int const* pc; int * base; int baseslot; TYPE_1__* L; } ;
typedef TYPE_2__ jit_State ;
typedef int TValue ;
typedef int TRef ;
typedef int BCReg ;
typedef int const BCIns ;


 int LJ_FR2 ;
 int LJ_TRERR_NYICALL ;
 int TREF_FALSE ;
 int bc_a (int const) ;
 int frame_islua (int *) ;
 int const* frame_pc (int *) ;
 int lj_snap_add (TYPE_2__*) ;
 int lj_trace_err (TYPE_2__*,int ) ;

__attribute__((used)) static void crec_snap_caller(jit_State *J)
{
  lua_State *L = J->L;
  TValue *base = L->base, *top = L->top;
  const BCIns *pc = J->pc;
  TRef ftr = J->base[-1];
  ptrdiff_t delta;
  if (!frame_islua(base-1) || J->framedepth <= 0)
    lj_trace_err(J, LJ_TRERR_NYICALL);
  J->pc = frame_pc(base-1); delta = 1+LJ_FR2+bc_a(J->pc[-1]);
  L->top = base; L->base = base - delta;
  J->base[-1] = TREF_FALSE;
  J->base -= delta; J->baseslot -= (BCReg)delta;
  J->maxslot = (BCReg)delta; J->framedepth--;
  lj_snap_add(J);
  L->base = base; L->top = top;
  J->framedepth++; J->maxslot = 1;
  J->base += delta; J->baseslot += (BCReg)delta;
  J->base[-1] = ftr; J->pc = pc;
}
