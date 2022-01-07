
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {int dummy; } ;
typedef int lua_State ;
typedef int lua_Number ;
typedef int int64_t ;


 int BSON_INT32 ;
 int BSON_INT64 ;
 int BSON_REAL ;
 int append_key (struct bson*,int *,int ,char const*,size_t) ;
 scalar_t__ is_32bit (int ) ;
 scalar_t__ lua_isinteger (int *,int) ;
 int lua_tointeger (int *,int) ;
 int lua_tonumber (int *,int) ;
 int write_double (struct bson*,int ) ;
 int write_int32 (struct bson*,int ) ;
 int write_int64 (struct bson*,int ) ;

__attribute__((used)) static void
append_number(struct bson *bs, lua_State *L, const char *key, size_t sz) {
 if (lua_isinteger(L, -1)) {
  int64_t i = lua_tointeger(L, -1);
  if (is_32bit(i)) {
   append_key(bs, L, BSON_INT32, key, sz);
   write_int32(bs, i);
  } else {
   append_key(bs, L, BSON_INT64, key, sz);
   write_int64(bs, i);
  }
 } else {
  lua_Number d = lua_tonumber(L,-1);
  append_key(bs, L, BSON_REAL, key, sz);
  write_double(bs, d);
 }
}
