
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int Table ;
struct TYPE_15__ {int numparams; int is_vararg; int maxstacksize; } ;
typedef int StkId ;
typedef TYPE_2__ Proto ;


 int VARARG_HASARG ;
 int VARARG_NEEDSARG ;
 int cast_num (int) ;
 int iswhite (int ) ;
 int luaC_checkGC (TYPE_1__*) ;
 int luaD_checkstack (TYPE_1__*,int ) ;
 int * luaH_new (TYPE_1__*,int,int) ;
 int luaH_setnum (TYPE_1__*,int *,int) ;
 int luaH_setstr (TYPE_1__*,int *,int ) ;
 int luaS_newliteral (TYPE_1__*,char*) ;
 int lua_assert (int) ;
 int obj2gco (int *) ;
 int sethvalue (TYPE_1__*,int ,int *) ;
 int setnilvalue (int) ;
 int setnvalue (int ,int ) ;
 int setobj2n (TYPE_1__*,int ,int) ;
 int setobjs2s (TYPE_1__*,int ,int) ;

__attribute__((used)) static StkId adjust_varargs (lua_State *L, Proto *p, int actual) {
  int i;
  int nfixargs = p->numparams;
  Table *htab = ((void*)0);
  StkId base, fixed;
  for (; actual < nfixargs; ++actual)
    setnilvalue(L->top++);
  fixed = L->top - actual;
  base = L->top;
  for (i=0; i<nfixargs; i++) {
    setobjs2s(L, L->top++, fixed+i);
    setnilvalue(fixed+i);
  }

  if (htab) {
    sethvalue(L, L->top++, htab);
    lua_assert(iswhite(obj2gco(htab)));
  }
  return base;
}
