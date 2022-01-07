
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int StkId ;


 int api_checknelems (TYPE_1__*,int) ;
 int hvalue (int ) ;
 int index2adr (TYPE_1__*,int) ;
 int luaC_barriert (TYPE_1__*,int ,scalar_t__) ;
 int luaH_set (TYPE_1__*,int ,scalar_t__) ;
 int luai_apicheck (TYPE_1__*,int ) ;
 int setobj (TYPE_1__*,int ,scalar_t__) ;
 int ttistable (int ) ;

__attribute__((used)) static void lua_rawset(lua_State*L,int idx){
StkId t;
api_checknelems(L,2);
t=index2adr(L,idx);
luai_apicheck(L,ttistable(t));
setobj(L,luaH_set(L,hvalue(t),L->top-2),L->top-1);
luaC_barriert(L,hvalue(t),L->top-1);
L->top-=2;
}
