
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int ZIO ;
struct TYPE_22__ {scalar_t__ sizeupvalues; } ;
struct TYPE_21__ {scalar_t__ nupvalues; TYPE_7__* p; } ;
struct TYPE_20__ {char const* name; int * Z; TYPE_1__* L; } ;
typedef TYPE_2__ LoadState ;
typedef TYPE_3__ LClosure ;


 char const* LUA_SIGNATURE ;
 int LoadByte (TYPE_2__*) ;
 int LoadFunction (TYPE_2__*,TYPE_7__*,int *) ;
 int buff ;
 int checkHeader (TYPE_2__*) ;
 int luaD_inctop (TYPE_1__*) ;
 TYPE_3__* luaF_newLclosure (TYPE_1__*,int ) ;
 TYPE_7__* luaF_newproto (TYPE_1__*) ;
 int lua_assert (int) ;
 int luai_verifycode (TYPE_1__*,int ,TYPE_7__*) ;
 int setclLvalue (TYPE_1__*,int ,TYPE_3__*) ;

LClosure *luaU_undump(lua_State *L, ZIO *Z, const char *name) {
  LoadState S;
  LClosure *cl;
  if (*name == '@' || *name == '=')
    S.name = name + 1;
  else if (*name == LUA_SIGNATURE[0])
    S.name = "binary string";
  else
    S.name = name;
  S.L = L;
  S.Z = Z;
  checkHeader(&S);
  cl = luaF_newLclosure(L, LoadByte(&S));
  setclLvalue(L, L->top, cl);
  luaD_inctop(L);
  cl->p = luaF_newproto(L);
  LoadFunction(&S, cl->p, ((void*)0));
  lua_assert(cl->nupvalues == cl->p->sizeupvalues);
  luai_verifycode(L, buff, cl->p);
  return cl;
}
