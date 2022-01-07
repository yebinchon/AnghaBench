
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bson {int member_1; int * member_2; int member_0; } ;
typedef int lua_State ;
typedef void* int64_t ;
typedef void* int32_t ;
 int BSON_TYPE_SHIFT ;
 scalar_t__ LUA_TNUMBER ;
 int luaL_checknumber (int *,int) ;
 int luaL_error (int *,char*,...) ;
 int lua_getuservalue (int *,int) ;
 int lua_isinteger (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_rawget (int *,int) ;
 int lua_toboolean (int *,int) ;
 void* lua_tointeger (int *,int) ;
 int lua_tonumber (int *,int) ;
 int lua_tostring (int *,int) ;
 int * lua_touserdata (int *,int) ;
 int replace_object (int *,int,struct bson*) ;
 int write_byte (struct bson*,int ) ;
 int write_double (struct bson*,int ) ;
 int write_int32 (struct bson*,void*) ;
 int write_int64 (struct bson*,void*) ;

__attribute__((used)) static int
lreplace(lua_State *L) {
 lua_getuservalue(L,1);
 if (!lua_istable(L,-1)) {
  return luaL_error(L, "call makeindex first");
 }
 lua_pushvalue(L,2);
 if (lua_rawget(L, -2) != LUA_TNUMBER) {
  return luaL_error(L, "Can't replace key : %s", lua_tostring(L,2));
 }
 int id = lua_tointeger(L, -1);
 int type = id & ((1<<(BSON_TYPE_SHIFT)) - 1);
 int offset = id >> BSON_TYPE_SHIFT;
 uint8_t * start = lua_touserdata(L,1);
 struct bson b = { 0,16, start + offset };
 switch (type) {
 case 129:
  write_double(&b, luaL_checknumber(L, 3));
  break;
 case 134:
  write_byte(&b, lua_toboolean(L,3));
  break;
 case 130:
 case 133:
 case 128:
  replace_object(L, type, &b);
  break;
 case 132: {
  if (!lua_isinteger(L, 3)) {
   luaL_error(L, "%f must be a 32bit integer ", lua_tonumber(L, 3));
  }
  int32_t i = lua_tointeger(L,3);
  write_int32(&b, i);
  break;
 }
 case 131: {
  if (!lua_isinteger(L, 3)) {
   luaL_error(L, "%f must be a 64bit integer ", lua_tonumber(L, 3));
  }
  int64_t i = lua_tointeger(L,3);
  write_int64(&b, i);
  break;
 }
 default:
  luaL_error(L, "Can't replace type %d", type);
  break;
 }
 return 0;
}
