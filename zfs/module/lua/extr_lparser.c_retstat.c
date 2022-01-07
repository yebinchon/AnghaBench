
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ k; } ;
typedef TYPE_2__ expdesc ;
struct TYPE_22__ {int nactvar; int freereg; } ;
struct TYPE_19__ {char token; } ;
struct TYPE_21__ {TYPE_1__ t; TYPE_4__* fs; } ;
typedef TYPE_3__ LexState ;
typedef TYPE_4__ FuncState ;


 int GETARG_A (int ) ;
 int LUA_MULTRET ;
 int OP_TAILCALL ;
 int SET_OPCODE (int ,int ) ;
 scalar_t__ VCALL ;
 scalar_t__ block_follow (TYPE_3__*,int) ;
 int explist (TYPE_3__*,TYPE_2__*) ;
 int getcode (TYPE_4__*,TYPE_2__*) ;
 scalar_t__ hasmultret (scalar_t__) ;
 int luaK_exp2anyreg (TYPE_4__*,TYPE_2__*) ;
 int luaK_exp2nextreg (TYPE_4__*,TYPE_2__*) ;
 int luaK_ret (TYPE_4__*,int,int) ;
 int luaK_setmultret (TYPE_4__*,TYPE_2__*) ;
 int lua_assert (int) ;
 int testnext (TYPE_3__*,char) ;

__attribute__((used)) static void retstat (LexState *ls) {

  FuncState *fs = ls->fs;
  expdesc e;
  int first, nret;
  if (block_follow(ls, 1) || ls->t.token == ';')
    first = nret = 0;
  else {
    nret = explist(ls, &e);
    if (hasmultret(e.k)) {
      luaK_setmultret(fs, &e);
      if (e.k == VCALL && nret == 1) {
        SET_OPCODE(getcode(fs,&e), OP_TAILCALL);
        lua_assert(GETARG_A(getcode(fs,&e)) == fs->nactvar);
      }
      first = fs->nactvar;
      nret = LUA_MULTRET;
    }
    else {
      if (nret == 1)
        first = luaK_exp2anyreg(fs, &e);
      else {
        luaK_exp2nextreg(fs, &e);
        first = fs->nactvar;
        lua_assert(nret == fs->freereg - first);
      }
    }
  }
  luaK_ret(fs, first, nret);
  (void) testnext(ls, ';');
}
