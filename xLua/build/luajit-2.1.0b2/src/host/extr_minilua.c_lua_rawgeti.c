
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int StkId ;


 int api_incr_top (TYPE_1__*) ;
 int hvalue (int ) ;
 int index2adr (TYPE_1__*,int) ;
 int luaH_getnum (int ,int) ;
 int luai_apicheck (TYPE_1__*,int ) ;
 int setobj (TYPE_1__*,int ,int ) ;
 int ttistable (int ) ;

__attribute__((used)) static void lua_rawgeti(lua_State*L,int idx,int n){
StkId o;
o=index2adr(L,idx);
luai_apicheck(L,ttistable(o));
setobj(L,L->top,luaH_getnum(hvalue(o),n));
api_incr_top(L);
}
