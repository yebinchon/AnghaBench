
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int size; scalar_t__ ptr; } ;
typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int int32_t ;
typedef int * document ;


 int OP_DELETE ;
 int buffer_create (struct buffer*) ;
 int buffer_destroy (struct buffer*) ;
 int get_length (int *) ;
 int luaL_addlstring (int *,char const*,int) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int luaL_pushresult (int *) ;
 int lua_tointeger (int *,int) ;
 int * lua_touserdata (int *,int) ;
 int reserve_length (struct buffer*) ;
 int write_int32 (struct buffer*,int ) ;
 int write_length (struct buffer*,int,int) ;
 int write_string (struct buffer*,char const*,size_t) ;

__attribute__((used)) static int
op_delete(lua_State *L) {
 document selector = lua_touserdata(L,3);
 if (selector == ((void*)0)) {
  luaL_error(L, "Invalid param");
 }
 size_t sz = 0;
 const char * name = luaL_checklstring(L,1,&sz);

 luaL_Buffer b;
 luaL_buffinit(L,&b);

 struct buffer buf;
 buffer_create(&buf);
  int len = reserve_length(&buf);
  write_int32(&buf, 0);
  write_int32(&buf, 0);
  write_int32(&buf, OP_DELETE);
  write_int32(&buf, 0);
  write_string(&buf, name, sz);
  write_int32(&buf, lua_tointeger(L,2));

  int32_t selector_len = get_length(selector);
  int total = buf.size + selector_len;
  write_length(&buf, total, len);

  luaL_addlstring(&b, (const char *)buf.ptr, buf.size);
 buffer_destroy(&buf);

 luaL_addlstring(&b, (const char *)selector, selector_len);
 luaL_pushresult(&b);

 return 1;
}
