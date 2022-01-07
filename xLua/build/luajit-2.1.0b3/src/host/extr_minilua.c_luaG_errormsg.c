
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ errfunc; scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef scalar_t__ StkId ;


 int incr_top (TYPE_1__*) ;
 int luaD_call (TYPE_1__*,scalar_t__,int) ;
 int luaD_throw (TYPE_1__*,int) ;
 scalar_t__ restorestack (TYPE_1__*,scalar_t__) ;
 int setobj (TYPE_1__*,scalar_t__,scalar_t__) ;
 int ttisfunction (scalar_t__) ;

__attribute__((used)) static void luaG_errormsg(lua_State*L){
if(L->errfunc!=0){
StkId errfunc=restorestack(L,L->errfunc);
if(!ttisfunction(errfunc))luaD_throw(L,5);
setobj(L,L->top,L->top-1);
setobj(L,L->top-1,errfunc);
incr_top(L);
luaD_call(L,L->top-2,1);
}
luaD_throw(L,2);
}
