
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {scalar_t__ size; } ;
typedef int lua_State ;


 int append_one (struct bson*,int *,char const*,size_t,int) ;
 int luaL_error (int *,char*,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int reserve_length (struct bson*) ;
 int write_byte (struct bson*,int ) ;
 int write_length (struct bson*,scalar_t__,int) ;

__attribute__((used)) static void
pack_ordered_dict(lua_State *L, struct bson *b, int n, int depth) {
 int length = reserve_length(b);
 int i;
 size_t sz;

 const char * key = lua_tolstring(L, n, &sz);
 for (i=0;i<n;i+=2) {
  if (key == ((void*)0)) {
   luaL_error(L, "Argument %d need a string", i+1);
  }
  lua_pushvalue(L, i+1);
  append_one(b, L, key, sz, depth);
  lua_pop(L,1);
  key = lua_tolstring(L, i+2, &sz);
 }
 write_byte(b,0);
 write_length(b, b->size - length, length);
}
