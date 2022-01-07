
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int UpVal ;
struct TYPE_4__ {int nupvalues; int ** upvals; } ;
typedef TYPE_1__ LClosure ;


 int luaC_upvdeccount (int *,int *) ;
 int luaM_freemem (int *,TYPE_1__*,int ) ;
 int sizeLclosure (int) ;

__attribute__((used)) static void freeLclosure (lua_State *L, LClosure *cl) {
  int i;
  for (i = 0; i < cl->nupvalues; i++) {
    UpVal *uv = cl->upvals[i];
    if (uv)
      luaC_upvdeccount(L, uv);
  }
  luaM_freemem(L, cl, sizeLclosure(cl->nupvalues));
}
