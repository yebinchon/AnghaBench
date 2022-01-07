
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int expdesc ;
typedef scalar_t__ UnOpr ;
struct TYPE_11__ {unsigned int left; unsigned int right; } ;
struct TYPE_9__ {int token; } ;
struct TYPE_10__ {int fs; TYPE_1__ t; } ;
typedef TYPE_2__ LexState ;
typedef size_t BinOpr ;


 size_t OPR_NOBINOPR ;
 scalar_t__ OPR_NOUNOPR ;
 unsigned int UNARY_PRIORITY ;
 int enterlevel (TYPE_2__*) ;
 size_t getbinopr (int ) ;
 scalar_t__ getunopr (int ) ;
 int leavelevel (TYPE_2__*) ;
 int luaK_infix (int ,size_t,int *) ;
 int luaK_posfix (int ,size_t,int *,int *) ;
 int luaK_prefix (int ,scalar_t__,int *) ;
 int luaX_next (TYPE_2__*) ;
 TYPE_5__* priority ;
 int simpleexp (TYPE_2__*,int *) ;

__attribute__((used)) static BinOpr subexpr (LexState *ls, expdesc *v, unsigned int limit) {
  BinOpr op;
  UnOpr uop;
  enterlevel(ls);
  uop = getunopr(ls->t.token);
  if (uop != OPR_NOUNOPR) {
    luaX_next(ls);
    subexpr(ls, v, UNARY_PRIORITY);
    luaK_prefix(ls->fs, uop, v);
  }
  else simpleexp(ls, v);

  op = getbinopr(ls->t.token);
  while (op != OPR_NOBINOPR && priority[op].left > limit) {
    expdesc v2;
    BinOpr nextop;
    luaX_next(ls);
    luaK_infix(ls->fs, op, v);

    nextop = subexpr(ls, &v2, priority[op].right);
    luaK_posfix(ls->fs, op, v, &v2);
    op = nextop;
  }
  leavelevel(ls);
  return op;
}
