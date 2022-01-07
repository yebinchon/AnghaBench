
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int size; scalar_t__ ptr; } ;
typedef int lua_State ;


 int OP_GET_MORE ;
 int buffer_create (struct buffer*) ;
 int buffer_destroy (struct buffer*) ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 char* luaL_tolstring (int *,int,size_t*) ;
 int lua_pushlstring (int *,char const*,int ) ;
 int reserve_length (struct buffer*) ;
 int write_bytes (struct buffer*,char const*,int) ;
 int write_int32 (struct buffer*,int) ;
 int write_length (struct buffer*,int ,int) ;
 int write_string (struct buffer*,char const*,size_t) ;

__attribute__((used)) static int
op_get_more(lua_State *L) {
 int id = luaL_checkinteger(L, 1);
 size_t sz = 0;
 const char * name = luaL_checklstring(L,2,&sz);
 int number = luaL_checkinteger(L, 3);
 size_t cursor_len = 0;
 const char * cursor_id = luaL_tolstring(L, 4, &cursor_len);
 if (cursor_len != 8) {
  return luaL_error(L, "Invalid cursor id");
 }

 struct buffer buf;
 buffer_create(&buf);
  int len = reserve_length(&buf);
  write_int32(&buf, id);
  write_int32(&buf, 0);
  write_int32(&buf, OP_GET_MORE);
  write_int32(&buf, 0);
  write_string(&buf, name, sz);
  write_int32(&buf, number);
  write_bytes(&buf, cursor_id, 8);
  write_length(&buf, buf.size, len);

  lua_pushlstring(L, (const char *)buf.ptr, buf.size);
 buffer_destroy(&buf);

 return 1;
}
