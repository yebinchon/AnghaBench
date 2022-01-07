
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,int ) ;
 char* lua_tostring (int *,int) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int ) ;

__attribute__((used)) static const char *
get_dest_string(lua_State *L, int index) {
 const char * dest_string = lua_tostring(L, index);
 if (dest_string == ((void*)0)) {
  luaL_error(L, "dest address type (%s) must be a string or number.", lua_typename(L, lua_type(L,index)));
 }
 return dest_string;
}
