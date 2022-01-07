
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bson {int ptr; } ;
typedef int lua_State ;
typedef int int64_t ;





 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,...) ;
 int memcpy (int ,char const*,int) ;
 int write_int32 (struct bson*,int const) ;
 int write_int64 (struct bson*,int) ;

__attribute__((used)) static void
replace_object(lua_State *L, int type, struct bson * bs) {
 size_t len = 0;
 const char * data = luaL_checklstring(L,3, &len);
 if (len < 6 || data[0] != 0 || data[1] != type) {
  luaL_error(L, "Type mismatch, need bson type %d", type);
 }
 switch (type) {
 case 129:
  if (len != 2+12) {
   luaL_error(L, "Invalid object id");
  }
  memcpy(bs->ptr, data+2, 12);
  break;
 case 130: {
  if (len != 2+4) {
   luaL_error(L, "Invalid date");
  }
  const uint32_t * ts = (const uint32_t *)(data + 2);
  int64_t v = (int64_t)*ts * 1000;
  write_int64(bs, v);
  break;
 }
 case 128: {
  if (len != 2+8) {
   luaL_error(L, "Invalid timestamp");
  }
  const uint32_t * inc = (const uint32_t *)(data + 2);
  const uint32_t * ts = (const uint32_t *)(data + 6);
  write_int32(bs, *inc);
  write_int32(bs, *ts);
  break;
 }
 }
}
