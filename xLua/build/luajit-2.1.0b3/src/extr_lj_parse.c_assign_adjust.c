
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_14__ {scalar_t__ k; } ;
struct TYPE_13__ {scalar_t__ freereg; } ;
struct TYPE_12__ {TYPE_2__* fs; } ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ FuncState ;
typedef TYPE_3__ ExpDesc ;
typedef scalar_t__ BCReg ;


 scalar_t__ VCALL ;
 scalar_t__ VVOID ;
 int bcemit_nil (TYPE_2__*,scalar_t__,scalar_t__) ;
 int bcptr (TYPE_2__*,TYPE_3__*) ;
 int bcreg_reserve (TYPE_2__*,scalar_t__) ;
 int expr_tonextreg (TYPE_2__*,TYPE_3__*) ;
 int setbc_b (int ,int) ;

__attribute__((used)) static void assign_adjust(LexState *ls, BCReg nvars, BCReg nexps, ExpDesc *e)
{
  FuncState *fs = ls->fs;
  int32_t extra = (int32_t)nvars - (int32_t)nexps;
  if (e->k == VCALL) {
    extra++;
    if (extra < 0) extra = 0;
    setbc_b(bcptr(fs, e), extra+1);
    if (extra > 1) bcreg_reserve(fs, (BCReg)extra-1);
  } else {
    if (e->k != VVOID)
      expr_tonextreg(fs, e);
    if (extra > 0) {
      BCReg reg = fs->freereg;
      bcreg_reserve(fs, (BCReg)extra);
      bcemit_nil(fs, reg, (BCReg)extra);
    }
  }
  if (nexps > nvars)
    ls->fs->freereg -= nexps - nvars;
}
