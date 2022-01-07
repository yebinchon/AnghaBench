
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef void Udata ;


 int api_incr_top (TYPE_1__*) ;
 int getcurrenv (TYPE_1__*) ;
 int luaC_checkGC (TYPE_1__*) ;
 void* luaS_newudata (TYPE_1__*,size_t,int ) ;
 int setuvalue (TYPE_1__*,int ,void*) ;

__attribute__((used)) static void*lua_newuserdata(lua_State*L,size_t size){
Udata*u;
luaC_checkGC(L);
u=luaS_newudata(L,size,getcurrenv(L));
setuvalue(L,L->top,u);
api_incr_top(L);
return u+1;
}
