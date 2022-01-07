
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ currentline; int short_src; } ;
typedef TYPE_1__ lua_Debug ;


 int lua_getinfo (int *,char*,TYPE_1__*) ;
 scalar_t__ lua_getstack (int *,int,TYPE_1__*) ;
 int lua_pushfstring (int *,char*,int ,scalar_t__) ;
 int lua_pushliteral (int *,char*) ;

__attribute__((used)) static void luaL_where(lua_State*L,int level){
lua_Debug ar;
if(lua_getstack(L,level,&ar)){
lua_getinfo(L,"Sl",&ar);
if(ar.currentline>0){
lua_pushfstring(L,"%s:%d: ",ar.short_src,ar.currentline);
return;
}
}
lua_pushliteral(L,"");
}
