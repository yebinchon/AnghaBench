
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_20__ {scalar_t__ info; } ;
struct TYPE_21__ {TYPE_1__ s; } ;
struct TYPE_23__ {int k; TYPE_2__ u; } ;
struct TYPE_22__ {scalar_t__ nactvar; int freereg; } ;
typedef TYPE_3__ FuncState ;
typedef TYPE_4__ ExpDesc ;
typedef scalar_t__ BinOpr ;
typedef int BCReg ;
typedef scalar_t__ BCOp ;
typedef int BCIns ;


 int BCINS_AD (scalar_t__,int ,int ) ;
 scalar_t__ BC_ISEQN ;
 scalar_t__ BC_ISEQP ;
 scalar_t__ BC_ISEQS ;
 scalar_t__ BC_ISEQV ;
 scalar_t__ BC_ISLT ;
 scalar_t__ BC_ISNEV ;
 scalar_t__ OPR_EQ ;
 scalar_t__ OPR_LT ;
 scalar_t__ OPR_NE ;
 int VJMP ;





 int VNONRELOC ;
 int bcemit_INS (TYPE_3__*,int ) ;
 scalar_t__ bcemit_jmp (TYPE_3__*) ;
 int const_num (TYPE_3__*,TYPE_4__*) ;
 int const_pri (TYPE_4__*) ;
 int const_str (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ expr_isk (TYPE_4__*) ;
 int expr_toanyreg (TYPE_3__*,TYPE_4__*) ;
 int expr_toval (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static void bcemit_comp(FuncState *fs, BinOpr opr, ExpDesc *e1, ExpDesc *e2)
{
  ExpDesc *eret = e1;
  BCIns ins;
  expr_toval(fs, e1);
  if (opr == OPR_EQ || opr == OPR_NE) {
    BCOp op = opr == OPR_EQ ? BC_ISEQV : BC_ISNEV;
    BCReg ra;
    if (expr_isk(e1)) { e1 = e2; e2 = eret; }
    ra = expr_toanyreg(fs, e1);
    expr_toval(fs, e2);
    switch (e2->k) {
    case 131: case 132: case 128:
      ins = BCINS_AD(op+(BC_ISEQP-BC_ISEQV), ra, const_pri(e2));
      break;
    case 129:
      ins = BCINS_AD(op+(BC_ISEQS-BC_ISEQV), ra, const_str(fs, e2));
      break;
    case 130:
      ins = BCINS_AD(op+(BC_ISEQN-BC_ISEQV), ra, const_num(fs, e2));
      break;
    default:
      ins = BCINS_AD(op, ra, expr_toanyreg(fs, e2));
      break;
    }
  } else {
    uint32_t op = opr-OPR_LT+BC_ISLT;
    BCReg ra, rd;
    if ((op-BC_ISLT) & 1) {
      e1 = e2; e2 = eret;
      op = ((op-BC_ISLT)^3)+BC_ISLT;
      expr_toval(fs, e1);
    }
    rd = expr_toanyreg(fs, e2);
    ra = expr_toanyreg(fs, e1);
    ins = BCINS_AD(op, ra, rd);
  }

  if (e1->k == VNONRELOC && e1->u.s.info >= fs->nactvar) fs->freereg--;
  if (e2->k == VNONRELOC && e2->u.s.info >= fs->nactvar) fs->freereg--;
  bcemit_INS(fs, ins);
  eret->u.s.info = bcemit_jmp(fs);
  eret->k = VJMP;
}
