
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ info; } ;
struct TYPE_14__ {TYPE_2__ s; } ;
struct TYPE_17__ {scalar_t__ k; TYPE_1__ u; } ;
struct TYPE_16__ {scalar_t__ nactvar; } ;
typedef TYPE_3__ FuncState ;
typedef TYPE_4__ ExpDesc ;
typedef scalar_t__ BCReg ;


 scalar_t__ VNONRELOC ;
 int expr_discharge (TYPE_3__*,TYPE_4__*) ;
 int expr_hasjump (TYPE_4__*) ;
 int expr_tonextreg (TYPE_3__*,TYPE_4__*) ;
 int expr_toreg (TYPE_3__*,TYPE_4__*,scalar_t__) ;

__attribute__((used)) static BCReg expr_toanyreg(FuncState *fs, ExpDesc *e)
{
  expr_discharge(fs, e);
  if (e->k == VNONRELOC) {
    if (!expr_hasjump(e)) return e->u.s.info;
    if (e->u.s.info >= fs->nactvar) {
      expr_toreg(fs, e, e->u.s.info);
      return e->u.s.info;
    }
  }
  expr_tonextreg(fs, e);
  return e->u.s.info;
}
