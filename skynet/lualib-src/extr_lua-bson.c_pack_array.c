
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {scalar_t__ size; } ;
typedef int lua_State ;


 int append_one (struct bson*,int *,char const*,size_t,int) ;
 size_t bson_numstr (char*,size_t) ;
 int lua_geti (int *,int,size_t) ;
 int lua_pop (int *,int) ;
 int reserve_length (struct bson*) ;
 int write_byte (struct bson*,int ) ;
 int write_length (struct bson*,scalar_t__,int) ;

__attribute__((used)) static void
pack_array(lua_State *L, struct bson *b, int depth, size_t len) {
 int length = reserve_length(b);
 size_t i;
 for (i=1;i<=len;i++) {
  char numberkey[32];
  size_t sz = bson_numstr(numberkey, i - 1);
  const char * key = numberkey;
  lua_geti(L, -1, i);
  append_one(b, L, key, sz, depth);
  lua_pop(L, 1);
 }
 write_byte(b,0);
 write_length(b, b->size - length, length);
}
