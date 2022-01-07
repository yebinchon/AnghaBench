
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int info; } ;
struct TYPE_14__ {TYPE_2__ s; } ;
struct TYPE_16__ {scalar_t__ k; TYPE_1__ u; } ;
typedef TYPE_3__ expdesc ;
struct TYPE_17__ {scalar_t__ nactvar; } ;
typedef TYPE_4__ FuncState ;


 scalar_t__ VNONRELOC ;
 int exp2reg (TYPE_4__*,TYPE_3__*,int) ;
 int hasjumps (TYPE_3__*) ;
 int luaK_dischargevars (TYPE_4__*,TYPE_3__*) ;
 int luaK_exp2nextreg (TYPE_4__*,TYPE_3__*) ;

int luaK_exp2anyreg (FuncState *fs, expdesc *e) {
  luaK_dischargevars(fs, e);
  if (e->k == VNONRELOC) {
    if (!hasjumps(e)) return e->u.s.info;
    if (e->u.s.info >= fs->nactvar) {
      exp2reg(fs, e, e->u.s.info);
      return e->u.s.info;
    }
  }
  luaK_exp2nextreg(fs, e);
  return e->u.s.info;
}
