
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int size; scalar_t__ ptr; } ;
typedef int lua_State ;
typedef int luaL_Buffer ;
typedef scalar_t__ document ;


 int OP_INSERT ;
 int buffer_create (struct buffer*) ;
 int buffer_destroy (struct buffer*) ;
 int document_length (int *) ;
 int get_length (scalar_t__) ;
 int luaL_addlstring (int *,char const*,int) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_pushresult (int *) ;
 scalar_t__ lua_isuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_rawlen (int *,int) ;
 int lua_tointeger (int *,int) ;
 scalar_t__ lua_touserdata (int *,int) ;
 int reserve_length (struct buffer*) ;
 int write_int32 (struct buffer*,int ) ;
 int write_length (struct buffer*,int,int) ;
 int write_string (struct buffer*,char const*,size_t) ;

__attribute__((used)) static int
op_insert(lua_State *L) {
 size_t sz = 0;
 const char * name = luaL_checklstring(L,2,&sz);
 int dsz = document_length(L);

 luaL_Buffer b;
 luaL_buffinit(L, &b);

 struct buffer buf;
 buffer_create(&buf);

  int len = reserve_length(&buf);
  write_int32(&buf, 0);
  write_int32(&buf, 0);
  write_int32(&buf, OP_INSERT);
  write_int32(&buf, lua_tointeger(L,1));
  write_string(&buf, name, sz);

  int total = buf.size + dsz;
  write_length(&buf, total, len);

  luaL_addlstring(&b, (const char *)buf.ptr, buf.size);
 buffer_destroy(&buf);

 if (lua_isuserdata(L,3)) {
  document doc = lua_touserdata(L,3);
  luaL_addlstring(&b, (const char *)doc, get_length(doc));
 } else {
  int s = lua_rawlen(L, 3);
  int i;
  for (i=1;i<=s;i++) {
   lua_rawgeti(L,3,i);
   document doc = lua_touserdata(L,-1);
   lua_pop(L,1);
   luaL_addlstring(&b, (const char *)doc, get_length(doc));
  }
 }

 luaL_pushresult(&b);

 return 1;
}
