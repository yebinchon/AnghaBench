
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_block {int dummy; } ;
typedef int lua_State ;
typedef int lua_Number ;
typedef int lua_Integer ;
 int MAX_DEPTH ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 int lua_isinteger (int *,int) ;
 int lua_toboolean (int *,int) ;
 int lua_tointeger (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_tonumber (int *,int) ;
 int lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;
 int wb_boolean (struct write_block*,int ) ;
 int wb_free (struct write_block*) ;
 int wb_integer (struct write_block*,int ) ;
 int wb_nil (struct write_block*) ;
 int wb_pointer (struct write_block*,int ) ;
 int wb_real (struct write_block*,int ) ;
 int wb_string (struct write_block*,char const*,int) ;
 int wb_table (int *,struct write_block*,int,int) ;

__attribute__((used)) static void
pack_one(lua_State *L, struct write_block *b, int index, int depth) {
 if (depth > MAX_DEPTH) {
  wb_free(b);
  luaL_error(L, "serialize can't pack too depth table");
 }
 int type = lua_type(L,index);
 switch(type) {
 case 131:
  wb_nil(b);
  break;
 case 130: {
  if (lua_isinteger(L, index)) {
   lua_Integer x = lua_tointeger(L,index);
   wb_integer(b, x);
  } else {
   lua_Number n = lua_tonumber(L,index);
   wb_real(b,n);
  }
  break;
 }
 case 133:
  wb_boolean(b, lua_toboolean(L,index));
  break;
 case 129: {
  size_t sz = 0;
  const char *str = lua_tolstring(L,index,&sz);
  wb_string(b, str, (int)sz);
  break;
 }
 case 132:
  wb_pointer(b, lua_touserdata(L,index));
  break;
 case 128: {
  if (index < 0) {
   index = lua_gettop(L) + index + 1;
  }
  wb_table(L, b, index, depth+1);
  break;
 }
 default:
  wb_free(b);
  luaL_error(L, "Unsupport type %s to serialize", lua_typename(L, type));
 }
}
