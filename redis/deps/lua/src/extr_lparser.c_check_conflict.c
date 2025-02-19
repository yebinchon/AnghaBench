
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int info; int aux; } ;
struct TYPE_14__ {TYPE_1__ s; } ;
struct TYPE_15__ {scalar_t__ k; TYPE_2__ u; } ;
struct LHS_assign {TYPE_3__ v; struct LHS_assign* prev; } ;
struct TYPE_16__ {int info; } ;
struct TYPE_17__ {TYPE_4__ s; } ;
struct TYPE_18__ {TYPE_5__ u; } ;
typedef TYPE_6__ expdesc ;
struct TYPE_20__ {int freereg; } ;
struct TYPE_19__ {TYPE_8__* fs; } ;
typedef TYPE_7__ LexState ;
typedef TYPE_8__ FuncState ;


 int OP_MOVE ;
 scalar_t__ VINDEXED ;
 int luaK_codeABC (TYPE_8__*,int ,int,int,int ) ;
 int luaK_reserveregs (TYPE_8__*,int) ;

__attribute__((used)) static void check_conflict (LexState *ls, struct LHS_assign *lh, expdesc *v) {
  FuncState *fs = ls->fs;
  int extra = fs->freereg;
  int conflict = 0;
  for (; lh; lh = lh->prev) {
    if (lh->v.k == VINDEXED) {
      if (lh->v.u.s.info == v->u.s.info) {
        conflict = 1;
        lh->v.u.s.info = extra;
      }
      if (lh->v.u.s.aux == v->u.s.info) {
        conflict = 1;
        lh->v.u.s.aux = extra;
      }
    }
  }
  if (conflict) {
    luaK_codeABC(fs, OP_MOVE, fs->freereg, v->u.s.info, 0);
    luaK_reserveregs(fs, 1);
  }
}
