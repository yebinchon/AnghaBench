
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int size; scalar_t__ ptr; } ;
typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int int32_t ;
typedef int * document ;


 int OP_QUERY ;
 int buffer_create (struct buffer*) ;
 int buffer_destroy (struct buffer*) ;
 int get_length (int *) ;
 int luaL_addlstring (int *,char const*,int) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int luaL_pushresult (int *) ;
 int * lua_touserdata (int *,int) ;
 int reserve_length (struct buffer*) ;
 int write_int32 (struct buffer*,int) ;
 int write_length (struct buffer*,int,int) ;
 int write_string (struct buffer*,char const*,size_t) ;

__attribute__((used)) static int
op_query(lua_State *L) {
 int id = luaL_checkinteger(L,1);
 document query = lua_touserdata(L,6);
 if (query == ((void*)0)) {
  return luaL_error(L, "require query document");
 }
 document selector = lua_touserdata(L,7);
 int flags = luaL_checkinteger(L, 2);
 size_t nsz = 0;
 const char *name = luaL_checklstring(L,3,&nsz);
 int skip = luaL_checkinteger(L, 4);
 int number = luaL_checkinteger(L, 5);

 luaL_Buffer b;
 luaL_buffinit(L,&b);

 struct buffer buf;
 buffer_create(&buf);
  int len = reserve_length(&buf);
  write_int32(&buf, id);
  write_int32(&buf, 0);
  write_int32(&buf, OP_QUERY);
  write_int32(&buf, flags);
  write_string(&buf, name, nsz);
  write_int32(&buf, skip);
  write_int32(&buf, number);

  int32_t query_len = get_length(query);
  int total = buf.size + query_len;
  int32_t selector_len = 0;
  if (selector) {
   selector_len = get_length(selector);
   total += selector_len;
  }

  write_length(&buf, total, len);
  luaL_addlstring(&b, (const char *)buf.ptr, buf.size);
 buffer_destroy(&buf);

 luaL_addlstring(&b, (const char *)query, query_len);

 if (selector) {
  luaL_addlstring(&b, (const char *)selector, selector_len);
 }

 luaL_pushresult(&b);

 return 1;
}
