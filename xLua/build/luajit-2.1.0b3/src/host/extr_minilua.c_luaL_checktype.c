
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_type (int *,int) ;
 int tag_error (int *,int,int) ;

__attribute__((used)) static void luaL_checktype(lua_State*L,int narg,int t){
if(lua_type(L,narg)!=t)
tag_error(L,narg,t);
}
