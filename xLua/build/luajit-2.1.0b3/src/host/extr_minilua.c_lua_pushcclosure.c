
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ top; } ;
typedef TYPE_2__ lua_State ;
typedef int lua_CFunction ;
struct TYPE_14__ {int * upvalue; int f; } ;
struct TYPE_16__ {TYPE_1__ c; } ;
typedef TYPE_3__ Closure ;


 int api_checknelems (TYPE_2__*,int) ;
 int api_incr_top (TYPE_2__*) ;
 int getcurrenv (TYPE_2__*) ;
 int luaC_checkGC (TYPE_2__*) ;
 TYPE_3__* luaF_newCclosure (TYPE_2__*,int,int ) ;
 int setclvalue (TYPE_2__*,scalar_t__,TYPE_3__*) ;
 int setobj (TYPE_2__*,int *,scalar_t__) ;

__attribute__((used)) static void lua_pushcclosure(lua_State*L,lua_CFunction fn,int n){
Closure*cl;
luaC_checkGC(L);
api_checknelems(L,n);
cl=luaF_newCclosure(L,n,getcurrenv(L));
cl->c.f=fn;
L->top-=n;
while(n--)
setobj(L,&cl->c.upvalue[n],L->top+n);
setclvalue(L,L->top,cl);
api_incr_top(L);
}
