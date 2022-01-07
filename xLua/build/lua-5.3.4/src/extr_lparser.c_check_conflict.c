
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ vt; int t; int idx; } ;
struct TYPE_13__ {TYPE_1__ ind; } ;
struct TYPE_14__ {scalar_t__ k; TYPE_2__ u; } ;
struct LHS_assign {TYPE_3__ v; struct LHS_assign* prev; } ;
struct TYPE_15__ {int info; } ;
struct TYPE_16__ {scalar_t__ k; TYPE_4__ u; } ;
typedef TYPE_5__ expdesc ;
struct TYPE_18__ {int freereg; } ;
struct TYPE_17__ {TYPE_7__* fs; } ;
typedef int OpCode ;
typedef TYPE_6__ LexState ;
typedef TYPE_7__ FuncState ;


 int OP_GETUPVAL ;
 int OP_MOVE ;
 scalar_t__ VINDEXED ;
 scalar_t__ VLOCAL ;
 int luaK_codeABC (TYPE_7__*,int ,int,int,int ) ;
 int luaK_reserveregs (TYPE_7__*,int) ;

__attribute__((used)) static void check_conflict (LexState *ls, struct LHS_assign *lh, expdesc *v) {
  FuncState *fs = ls->fs;
  int extra = fs->freereg;
  int conflict = 0;
  for (; lh; lh = lh->prev) {
    if (lh->v.k == VINDEXED) {

      if (lh->v.u.ind.vt == v->k && lh->v.u.ind.t == v->u.info) {
        conflict = 1;
        lh->v.u.ind.vt = VLOCAL;
        lh->v.u.ind.t = extra;
      }

      if (v->k == VLOCAL && lh->v.u.ind.idx == v->u.info) {
        conflict = 1;
        lh->v.u.ind.idx = extra;
      }
    }
  }
  if (conflict) {

    OpCode op = (v->k == VLOCAL) ? OP_MOVE : OP_GETUPVAL;
    luaK_codeABC(fs, op, extra, v->u.info, 0);
    luaK_reserveregs(fs, 1);
  }
}
