
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int StkId ;


 int api_checkvalidindex (TYPE_1__*,int ) ;
 int api_incr_top (TYPE_1__*) ;
 int index2adr (TYPE_1__*,int) ;
 int luaS_new (TYPE_1__*,char const*) ;
 int luaV_gettable (TYPE_1__*,int ,int *,int ) ;
 int setsvalue (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void lua_getfield(lua_State*L,int idx,const char*k){
StkId t;
TValue key;
t=index2adr(L,idx);
api_checkvalidindex(L,t);
setsvalue(L,&key,luaS_new(L,k));
luaV_gettable(L,t,&key,L->top);
api_incr_top(L);
}
