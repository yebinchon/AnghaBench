
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 int MULTI_PART ;
 int TEMP_LENGTH ;
 int fill_header (int *,int*,int) ;
 int fill_uint32 (int*,int) ;
 int lua_pushlstring (int *,char const*,int) ;
 int lua_rawseti (int *,int,int) ;
 int memcpy (int*,char*,int) ;

__attribute__((used)) static void
packreq_multi(lua_State *L, int session, void * msg, uint32_t sz) {
 uint8_t buf[TEMP_LENGTH];
 int part = (sz - 1) / MULTI_PART + 1;
 int i;
 char *ptr = msg;
 for (i=0;i<part;i++) {
  uint32_t s;
  if (sz > MULTI_PART) {
   s = MULTI_PART;
   buf[2] = 2;
  } else {
   s = sz;
   buf[2] = 3;
  }
  fill_header(L, buf, s+5);
  fill_uint32(buf+3, (uint32_t)session);
  memcpy(buf+7, ptr, s);
  lua_pushlstring(L, (const char *)buf, s+7);
  lua_rawseti(L, -2, i+1);
  sz -= s;
  ptr += s;
 }
}
