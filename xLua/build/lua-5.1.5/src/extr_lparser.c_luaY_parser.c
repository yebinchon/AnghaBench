
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct LexState {int * fs; int * buff; } ;
struct FuncState {TYPE_1__* f; int * prev; } ;
typedef int lua_State ;
typedef int ZIO ;
struct TYPE_3__ {scalar_t__ nups; int is_vararg; } ;
typedef TYPE_1__ Proto ;
typedef int Mbuffer ;


 int TK_EOS ;
 int VARARG_ISVARARG ;
 int check (struct LexState*,int ) ;
 int chunk (struct LexState*) ;
 int close_func (struct LexState*) ;
 int luaS_new (int *,char const*) ;
 int luaX_next (struct LexState*) ;
 int luaX_setinput (int *,struct LexState*,int *,int ) ;
 int lua_assert (int) ;
 int open_func (struct LexState*,struct FuncState*) ;

Proto *luaY_parser (lua_State *L, ZIO *z, Mbuffer *buff, const char *name) {
  struct LexState lexstate;
  struct FuncState funcstate;
  lexstate.buff = buff;
  luaX_setinput(L, &lexstate, z, luaS_new(L, name));
  open_func(&lexstate, &funcstate);
  funcstate.f->is_vararg = VARARG_ISVARARG;
  luaX_next(&lexstate);
  chunk(&lexstate);
  check(&lexstate, TK_EOS);
  close_func(&lexstate);
  lua_assert(funcstate.prev == ((void*)0));
  lua_assert(funcstate.f->nups == 0);
  lua_assert(lexstate.fs == ((void*)0));
  return funcstate.f;
}
