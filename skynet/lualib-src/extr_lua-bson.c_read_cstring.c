
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson_reader {int size; char* ptr; } ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;

__attribute__((used)) static inline const char *
read_cstring(lua_State *L, struct bson_reader *br, size_t *sz) {
 int i;
 for (i=0;;i++) {
  if (i==br->size) {
   luaL_error(L, "Invalid bson block : cstring");
  }
  if (br->ptr[i] == '\0') {
   break;
  }
 }
 *sz = i;
 const char * r = (const char *)br->ptr;
 br->ptr += i+1;
 br->size -= i+1;
 return r;
}
