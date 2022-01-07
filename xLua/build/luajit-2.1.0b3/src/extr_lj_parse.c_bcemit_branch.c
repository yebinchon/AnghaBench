
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int info; } ;
struct TYPE_17__ {TYPE_1__ s; } ;
struct TYPE_19__ {scalar_t__ k; TYPE_2__ u; } ;
struct TYPE_18__ {scalar_t__ freereg; } ;
typedef TYPE_3__ FuncState ;
typedef TYPE_4__ ExpDesc ;
typedef int BCPos ;
typedef int BCIns ;


 int BCINS_AD (int ,int ,int ) ;
 int BC_ISF ;
 int BC_ISFC ;
 int BC_IST ;
 int BC_ISTC ;
 scalar_t__ BC_NOT ;
 int NO_REG ;
 scalar_t__ VNONRELOC ;
 scalar_t__ VRELOCABLE ;
 int bc_d (int ) ;
 scalar_t__ bc_op (int ) ;
 int bcemit_AD (TYPE_3__*,int ,int ,int ) ;
 int bcemit_jmp (TYPE_3__*) ;
 int * bcptr (TYPE_3__*,TYPE_4__*) ;
 int bcreg_reserve (TYPE_3__*,int) ;
 int expr_free (TYPE_3__*,TYPE_4__*) ;
 int expr_toreg_nobranch (TYPE_3__*,TYPE_4__*,scalar_t__) ;

__attribute__((used)) static BCPos bcemit_branch(FuncState *fs, ExpDesc *e, int cond)
{
  BCPos pc;
  if (e->k == VRELOCABLE) {
    BCIns *ip = bcptr(fs, e);
    if (bc_op(*ip) == BC_NOT) {
      *ip = BCINS_AD(cond ? BC_ISF : BC_IST, 0, bc_d(*ip));
      return bcemit_jmp(fs);
    }
  }
  if (e->k != VNONRELOC) {
    bcreg_reserve(fs, 1);
    expr_toreg_nobranch(fs, e, fs->freereg-1);
  }
  bcemit_AD(fs, cond ? BC_ISTC : BC_ISFC, NO_REG, e->u.s.info);
  pc = bcemit_jmp(fs);
  expr_free(fs, e);
  return pc;
}
