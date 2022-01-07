
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int StkId ;


 int hvalue (int ) ;
 int index2adr (TYPE_1__*,int) ;
 int luaH_get (int ,scalar_t__) ;
 int luai_apicheck (TYPE_1__*,int ) ;
 int setobj (TYPE_1__*,scalar_t__,int ) ;
 int ttistable (int ) ;

__attribute__((used)) static void lua_rawget(lua_State*L,int idx){
StkId t;
t=index2adr(L,idx);
luai_apicheck(L,ttistable(t));
setobj(L,L->top-1,luaH_get(hvalue(t),L->top-1));
}
