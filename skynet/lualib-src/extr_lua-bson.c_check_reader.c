
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson_reader {int size; } ;
typedef int lua_State ;


 int luaL_error (int *,char*,int,int) ;

__attribute__((used)) static inline void
check_reader(lua_State *L, struct bson_reader *br, int sz) {
 if (br->size < sz) {
  luaL_error(L, "Invalid bson block (%d:%d)", br->size, sz);
 }
}
