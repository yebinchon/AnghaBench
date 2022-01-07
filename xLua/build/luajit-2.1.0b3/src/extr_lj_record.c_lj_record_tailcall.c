
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_7__ {scalar_t__ framedepth; int baseslot; int maxslot; scalar_t__ tailcalled; scalar_t__ loopunroll; int * base; TYPE_1__* L; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_6__ {scalar_t__ base; } ;
typedef int TRef ;
typedef int BCReg ;


 int LJ_FR2 ;
 int LJ_TRERR_LUNROLL ;
 int LJ_TRERR_NYIRETL ;
 int TREF_FRAME ;
 scalar_t__ frame_delta (scalar_t__) ;
 scalar_t__ frame_isvarg (scalar_t__) ;
 int lj_trace_err (TYPE_2__*,int ) ;
 int memmove (int *,int *,int) ;
 int rec_call_setup (TYPE_2__*,int,int ) ;

void lj_record_tailcall(jit_State *J, BCReg func, ptrdiff_t nargs)
{
  rec_call_setup(J, func, nargs);
  if (frame_isvarg(J->L->base - 1)) {
    BCReg cbase = (BCReg)frame_delta(J->L->base - 1);
    if (--J->framedepth < 0)
      lj_trace_err(J, LJ_TRERR_NYIRETL);
    J->baseslot -= (BCReg)cbase;
    J->base -= cbase;
    func += cbase;
  }

  if (LJ_FR2 && J->baseslot == 2)
    J->base[func+1] = TREF_FRAME;
  memmove(&J->base[-1-LJ_FR2], &J->base[func], sizeof(TRef)*(J->maxslot+1+LJ_FR2));


  if (++J->tailcalled > J->loopunroll)
    lj_trace_err(J, LJ_TRERR_LUNROLL);
}
