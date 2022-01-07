
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int StkId ;


 int api_checkvalidindex (TYPE_1__*,int ) ;
 int index2adr (TYPE_1__*,int) ;
 int luaV_gettable (TYPE_1__*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void lua_gettable(lua_State*L,int idx){
StkId t;
t=index2adr(L,idx);
api_checkvalidindex(L,t);
luaV_gettable(L,t,L->top-1,L->top-1);
}
