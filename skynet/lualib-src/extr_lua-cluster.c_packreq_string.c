
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
 int luaL_error (int *,char*,char const*) ;
 int lua_pushlstring (int *,char const*,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_type (int *,int) ;
 char const* lua_typename (int *,int ) ;
 int memcpy (int*,char const*,size_t) ;
 int skynet_free (void*) ;

__attribute__((used)) static int
packreq_string(lua_State *L, int session, void * msg, uint32_t sz, int is_push) {
 size_t namelen = 0;
 const char *name = lua_tolstring(L, 1, &namelen);
 if (name == ((void*)0) || namelen < 1 || namelen > 255) {
  skynet_free(msg);
  if (name == ((void*)0)) {
   luaL_error(L, "name is not a string, it's a %s", lua_typename(L, lua_type(L, 1)));
  } else {
   luaL_error(L, "name is too long %s", name);
  }
 }

 uint8_t buf[TEMP_LENGTH];
 if (sz < MULTI_PART) {
  fill_header(L, buf, sz+6+namelen);
  buf[2] = 0x80;
  buf[3] = (uint8_t)namelen;
  memcpy(buf+4, name, namelen);
  fill_uint32(buf+4+namelen, is_push ? 0 : (uint32_t)session);
  memcpy(buf+8+namelen,msg,sz);

  lua_pushlstring(L, (const char *)buf, sz+8+namelen);
  return 0;
 } else {
  int part = (sz - 1) / MULTI_PART + 1;
  fill_header(L, buf, 10+namelen);
  buf[2] = is_push ? 0xc1 : 0x81;
  buf[3] = (uint8_t)namelen;
  memcpy(buf+4, name, namelen);
  fill_uint32(buf+4+namelen, (uint32_t)session);
  fill_uint32(buf+8+namelen, sz);

  lua_pushlstring(L, (const char *)buf, 12+namelen);
  return part;
 }
}
