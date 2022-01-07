
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct ConsControl {TYPE_3__* t; int nh; } ;
typedef int expdesc ;
struct TYPE_18__ {int freereg; } ;
struct TYPE_14__ {scalar_t__ token; } ;
struct TYPE_17__ {TYPE_1__ t; TYPE_5__* fs; } ;
struct TYPE_15__ {int info; } ;
struct TYPE_16__ {TYPE_2__ u; } ;
typedef TYPE_4__ LexState ;
typedef TYPE_5__ FuncState ;


 int MAX_INT ;
 int OP_SETTABLE ;
 scalar_t__ TK_NAME ;
 int checklimit (TYPE_5__*,int ,int ,char*) ;
 int checkname (TYPE_4__*,int *) ;
 int checknext (TYPE_4__*,char) ;
 int expr (TYPE_4__*,int *) ;
 int luaK_codeABC (TYPE_5__*,int ,int ,int,int) ;
 int luaK_exp2RK (TYPE_5__*,int *) ;
 int yindex (TYPE_4__*,int *) ;

__attribute__((used)) static void recfield (LexState *ls, struct ConsControl *cc) {

  FuncState *fs = ls->fs;
  int reg = ls->fs->freereg;
  expdesc key, val;
  int rkkey;
  if (ls->t.token == TK_NAME) {
    checklimit(fs, cc->nh, MAX_INT, "items in a constructor");
    checkname(ls, &key);
  }
  else
    yindex(ls, &key);
  cc->nh++;
  checknext(ls, '=');
  rkkey = luaK_exp2RK(fs, &key);
  expr(ls, &val);
  luaK_codeABC(fs, OP_SETTABLE, cc->t->u.info, rkkey, luaK_exp2RK(fs, &val));
  fs->freereg = reg;
}
