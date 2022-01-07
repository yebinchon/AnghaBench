
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {char* ptr; int size; } ;
typedef int lua_State ;


 int bson_reserve (struct bson*,size_t) ;
 int luaL_error (int *,char*) ;
 int utf8_copy (char const*,char*,size_t) ;

__attribute__((used)) static void
write_string(struct bson *b, lua_State *L, const char *key, size_t sz) {
 bson_reserve(b,sz+1);
 char *dst = (char *)(b->ptr + b->size);
 const char *src = key;
 size_t n = sz;
 while(n > 0) {
  int c = utf8_copy(src, dst, n);
  if (c == 0) {
   luaL_error(L, "Invalid utf8 string");
  }
  src += c;
  dst += c;
  n -= c;
 }
 b->ptr[b->size+sz] = '\0';
 b->size+=sz+1;
}
