
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;
typedef scalar_t__ int32_t ;
typedef int document ;


 int REPLY_QUERYFAILURE ;
 scalar_t__ get_length (int ) ;
 int little_endian (scalar_t__) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_istable (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,void*) ;
 int lua_pushlstring (int *,char const*,int) ;
 int lua_pushnil (int *) ;
 int lua_rawlen (int *,int) ;
 int lua_rawseti (int *,int,int) ;

__attribute__((used)) static int
op_reply(lua_State *L) {
 size_t data_len = 0;
 const char * data = luaL_checklstring(L,1,&data_len);
 struct {

  int32_t request_id;
  int32_t response_id;

  int32_t opcode;
  int32_t flags;
  int32_t cursor_id[2];
  int32_t starting;
  int32_t number;
 } const *reply = (const void *)data;

 if (data_len < sizeof(*reply)) {
  lua_pushboolean(L, 0);
  return 1;
 }

 int id = little_endian(reply->response_id);
 int flags = little_endian(reply->flags);
 if (flags & REPLY_QUERYFAILURE) {
  lua_pushboolean(L,0);
  lua_pushinteger(L, id);
  lua_pushlightuserdata(L, (void *)(reply+1));
  return 3;
 }

 int starting_from = little_endian(reply->starting);
 int number = little_endian(reply->number);
 int sz = (int)data_len - sizeof(*reply);
 const uint8_t * doc = (const uint8_t *)(reply+1);

 if (lua_istable(L,2)) {
  int i = 1;
  while (sz > 4) {
   lua_pushlightuserdata(L, (void *)doc);
   lua_rawseti(L, 2, i);

   int32_t doc_len = get_length((document)doc);

   doc += doc_len;
   sz -= doc_len;

   ++i;
  }
  if (i != number + 1) {
   lua_pushboolean(L,0);
   lua_pushinteger(L, id);
   return 2;
  }
  int c = lua_rawlen(L, 2);
  for (;i<=c;i++) {
   lua_pushnil(L);
   lua_rawseti(L, 2, i);
  }
 } else {
  if (sz >= 4) {
   sz -= get_length((document)doc);
  }
 }
 if (sz != 0) {
  return luaL_error(L, "Invalid result bson document");
 }
 lua_pushboolean(L,1);
 lua_pushinteger(L, id);
 if (number == 0)
  lua_pushnil(L);
 else
  lua_pushlightuserdata(L, (void *)(reply+1));
 if (reply->cursor_id[0] == 0 && reply->cursor_id[1]==0) {

  lua_pushnil(L);
 } else {
  lua_pushlstring(L, (const char *)(reply->cursor_id), 8);
 }
 lua_pushinteger(L, starting_from);

 return 5;
}
