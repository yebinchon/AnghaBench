
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int luaL_checkany (int *,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getmetatable (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_rawequal (int *,int,int) ;
 void* lua_touserdata (int *,int) ;

__attribute__((used)) static int io_type(lua_State*L){
void*ud;
luaL_checkany(L,1);
ud=lua_touserdata(L,1);
lua_getfield(L,(-10000),"FILE*");
if(ud==((void*)0)||!lua_getmetatable(L,1)||!lua_rawequal(L,-2,-1))
lua_pushnil(L);
else if(*((FILE**)ud)==((void*)0))
lua_pushliteral(L,"closed file");
else
lua_pushliteral(L,"file");
return 1;
}
