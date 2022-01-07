
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int load_aux (int *,int ) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_loadbuffer (int *,char const*,size_t,char const*) ;
 char* luaL_optstring (int *,int,char const*) ;

__attribute__((used)) static int luaB_loadstring(lua_State*L){
size_t l;
const char*s=luaL_checklstring(L,1,&l);
const char*chunkname=luaL_optstring(L,2,s);
return load_aux(L,luaL_loadbuffer(L,s,l,chunkname));
}
