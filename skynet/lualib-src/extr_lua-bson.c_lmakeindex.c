
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bson_reader {scalar_t__ size; int const* ptr; int member_1; int const* member_0; } ;
typedef int lua_State ;
typedef int int32_t ;
 int BSON_TYPE_SHIFT ;
 int get_length (int const*) ;
 int * luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*,int) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_rawset (int *,int) ;
 int lua_settop (int *,int) ;
 int lua_setuservalue (int *,int) ;
 int read_byte (int *,struct bson_reader*) ;
 int read_bytes (int *,struct bson_reader*,int) ;
 char* read_cstring (int *,struct bson_reader*,size_t*) ;
 int read_int32 (int *,struct bson_reader*) ;

__attribute__((used)) static int
lmakeindex(lua_State *L) {
 int32_t *bson = luaL_checkudata(L,1,"bson");
 const uint8_t * start = (const uint8_t *)bson;
 struct bson_reader br = { start+4, get_length(start) - 5 };
 lua_newtable(L);

 for (;;) {
  if (br.size == 0)
   break;
  int bt = read_byte(L, &br);
  size_t klen = 0;
  const char * key = read_cstring(L, &br, &klen);
  int field_size = 0;
  switch (bt) {
  case 138:
  case 128:
  case 142:
  case 132:
   field_size = 8;
   break;
  case 144:
   field_size = 1;
   break;
  case 137:
  case 129:
  case 130: {
   int sz = read_int32(L, &br);
   read_bytes(L, &br, sz);
   break;
  }
  case 143:
  case 146:
  case 140: {
   int sz = read_int32(L, &br);
   read_bytes(L, &br, sz-4);
   break;
  }
  case 145: {
   int sz = read_int32(L, &br);
   read_bytes(L, &br, sz+1);
   break;
  }
  case 133:
   field_size = 12;
   break;
  case 135:
  case 136:
  case 134:
   break;
  case 131: {
   size_t rlen1=0;
   size_t rlen2=0;
   read_cstring(L, &br, &rlen1);
   read_cstring(L, &br, &rlen2);
   break;
  }
  case 139:
   field_size = 4;
   break;
  case 141: {
   int sz = read_int32(L, &br);
   read_bytes(L, &br, sz+12);
   break;
  }
  default:

   luaL_error(L, "Invalid bson type : %d", bt);
   lua_pop(L,1);
   continue;
  }
  if (field_size > 0) {
   int id = bt | (int)(br.ptr - start) << BSON_TYPE_SHIFT;
   read_bytes(L, &br, field_size);
   lua_pushlstring(L, key, klen);
   lua_pushinteger(L,id);
   lua_rawset(L,-3);
  }
 }
 lua_setuservalue(L,1);
 lua_settop(L,1);

 return 1;
}
