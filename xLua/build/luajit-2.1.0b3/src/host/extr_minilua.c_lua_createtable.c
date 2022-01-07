
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int top; } ;
typedef TYPE_1__ lua_State ;


 int api_incr_top (TYPE_1__*) ;
 int luaC_checkGC (TYPE_1__*) ;
 int luaH_new (TYPE_1__*,int,int) ;
 int sethvalue (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void lua_createtable(lua_State*L,int narray,int nrec){
luaC_checkGC(L);
sethvalue(L,L->top,luaH_new(L,narray,nrec));
api_incr_top(L);
}
