
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_sendbuffer {size_t sz; void* buffer; void* type; } ;
typedef int lua_State ;





 void* SOCKET_BUFFER_MEMORY ;
 void* SOCKET_BUFFER_OBJECT ;
 void* SOCKET_BUFFER_RAWPOINTER ;
 int concat_table (int *,int,void*,size_t) ;
 size_t count_size (int *,int) ;
 void* luaL_checklstring (int *,int,size_t*) ;
 int lua_isinteger (int *,int) ;
 size_t lua_rawlen (int *,int) ;
 void* lua_tointeger (int *,int) ;
 void* lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;
 void* skynet_malloc (size_t) ;

__attribute__((used)) static void
get_buffer(lua_State *L, int index, struct socket_sendbuffer *buf) {
 void *buffer;
 switch(lua_type(L, index)) {
  size_t len;
 case 128:

  buf->type = SOCKET_BUFFER_RAWPOINTER;
  buf->buffer = lua_touserdata(L, index);
  if (lua_isinteger(L, index+1)) {
   buf->sz = lua_tointeger(L, index+1);
  } else {
   buf->sz = lua_rawlen(L, index);
  }
  break;
 case 130: {
  int sz = -1;
  if (lua_isinteger(L, index+1)) {
   sz = lua_tointeger(L,index+1);
  }
  if (sz < 0) {
   buf->type = SOCKET_BUFFER_OBJECT;
  } else {
   buf->type = SOCKET_BUFFER_MEMORY;
  }
  buf->buffer = lua_touserdata(L,index);
  buf->sz = (size_t)sz;
  break;
  }
 case 129:

  len = count_size(L, index);
  buffer = skynet_malloc(len);
  concat_table(L, index, buffer, len);
  buf->type = SOCKET_BUFFER_MEMORY;
  buf->buffer = buffer;
  buf->sz = len;
  break;
 default:
  buf->type = SOCKET_BUFFER_RAWPOINTER;
  buf->buffer = luaL_checklstring(L, index, &buf->sz);
  break;
 }
}
