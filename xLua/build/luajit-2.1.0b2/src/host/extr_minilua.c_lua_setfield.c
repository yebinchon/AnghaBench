
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int StkId ;


 int api_checknelems (TYPE_1__*,int) ;
 int api_checkvalidindex (TYPE_1__*,int ) ;
 int index2adr (TYPE_1__*,int) ;
 int luaS_new (TYPE_1__*,char const*) ;
 int luaV_settable (TYPE_1__*,int ,int *,scalar_t__) ;
 int setsvalue (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void lua_setfield(lua_State*L,int idx,const char*k){
StkId t;
TValue key;
api_checknelems(L,1);
t=index2adr(L,idx);
api_checkvalidindex(L,t);
setsvalue(L,&key,luaS_new(L,k));
luaV_settable(L,t,&key,L->top-1);
L->top--;
}
