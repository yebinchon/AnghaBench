
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int info; } ;
struct TYPE_14__ {scalar_t__ k; TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
struct TYPE_15__ {scalar_t__ nactvar; } ;
typedef TYPE_3__ FuncState ;


 scalar_t__ VNONRELOC ;
 int exp2reg (TYPE_3__*,TYPE_2__*,scalar_t__) ;
 int hasjumps (TYPE_2__*) ;
 int luaK_dischargevars (TYPE_3__*,TYPE_2__*) ;
 int luaK_exp2nextreg (TYPE_3__*,TYPE_2__*) ;

int luaK_exp2anyreg (FuncState *fs, expdesc *e) {
  luaK_dischargevars(fs, e);
  if (e->k == VNONRELOC) {
    if (!hasjumps(e)) return e->u.info;
    if (e->u.info >= fs->nactvar) {
      exp2reg(fs, e, e->u.info);
      return e->u.info;
    }
  }
  luaK_exp2nextreg(fs, e);
  return e->u.info;
}
