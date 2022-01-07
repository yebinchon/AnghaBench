
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef void* ptrdiff_t ;
struct TYPE_8__ {unsigned short nny; void* errfunc; int allowhook; int * ci; } ;
typedef TYPE_1__ lua_State ;
typedef int lu_byte ;
typedef int StkId ;
typedef int Pfunc ;
typedef int CallInfo ;


 int LUA_OK ;
 int luaD_rawrunprotected (TYPE_1__*,int ,void*) ;
 int luaD_shrinkstack (TYPE_1__*) ;
 int luaF_close (TYPE_1__*,int ) ;
 int restorestack (TYPE_1__*,void*) ;
 int seterrorobj (TYPE_1__*,int,int ) ;

int luaD_pcall (lua_State *L, Pfunc func, void *u,
                ptrdiff_t old_top, ptrdiff_t ef) {
  int status;
  CallInfo *old_ci = L->ci;
  lu_byte old_allowhooks = L->allowhook;
  unsigned short old_nny = L->nny;
  ptrdiff_t old_errfunc = L->errfunc;
  L->errfunc = ef;
  status = luaD_rawrunprotected(L, func, u);
  if (status != LUA_OK) {
    StkId oldtop = restorestack(L, old_top);
    luaF_close(L, oldtop);
    seterrorobj(L, status, oldtop);
    L->ci = old_ci;
    L->allowhook = old_allowhooks;
    L->nny = old_nny;
    luaD_shrinkstack(L);
  }
  L->errfunc = old_errfunc;
  return status;
}
