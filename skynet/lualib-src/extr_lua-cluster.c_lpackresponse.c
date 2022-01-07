
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 scalar_t__ LUA_TSTRING ;
 size_t MULTI_PART ;
 int TEMP_LENGTH ;
 int fill_header (int *,int*,size_t) ;
 int fill_uint32 (int*,int ) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 int lua_createtable (int *,int,int ) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_rawseti (int *,int,int) ;
 int lua_toboolean (int *,int) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 void* lua_touserdata (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int memcpy (int*,void*,size_t) ;

__attribute__((used)) static int
lpackresponse(lua_State *L) {
 uint32_t session = (uint32_t)luaL_checkinteger(L,1);


 int ok = lua_toboolean(L,2);
 void * msg;
 size_t sz;

 if (lua_type(L,3) == LUA_TSTRING) {
  msg = (void *)lua_tolstring(L, 3, &sz);
 } else {
  msg = lua_touserdata(L,3);
  sz = (size_t)luaL_checkinteger(L, 4);
 }

 if (!ok) {
  if (sz > MULTI_PART) {

   sz = MULTI_PART;
  }
 } else {
  if (sz > MULTI_PART) {

   int part = (sz - 1) / MULTI_PART + 1;
   lua_createtable(L, part+1, 0);
   uint8_t buf[TEMP_LENGTH];


   fill_header(L, buf, 9);
   fill_uint32(buf+2, session);
   buf[6] = 2;
   fill_uint32(buf+7, (uint32_t)sz);
   lua_pushlstring(L, (const char *)buf, 11);
   lua_rawseti(L, -2, 1);

   char * ptr = msg;
   int i;
   for (i=0;i<part;i++) {
    int s;
    if (sz > MULTI_PART) {
     s = MULTI_PART;
     buf[6] = 3;
    } else {
     s = sz;
     buf[6] = 4;
    }
    fill_header(L, buf, s+5);
    fill_uint32(buf+2, session);
    memcpy(buf+7,ptr,s);
    lua_pushlstring(L, (const char *)buf, s+7);
    lua_rawseti(L, -2, i+2);
    sz -= s;
    ptr += s;
   }
   return 1;
  }
 }

 uint8_t buf[TEMP_LENGTH];
 fill_header(L, buf, sz+5);
 fill_uint32(buf+2, session);
 buf[6] = ok;
 memcpy(buf+7,msg,sz);

 lua_pushlstring(L, (const char *)buf, sz+7);

 return 1;
}
