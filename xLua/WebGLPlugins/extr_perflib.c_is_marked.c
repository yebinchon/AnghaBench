
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MARKED_TABLE ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawgetp (int *,int ,void const*) ;

__attribute__((used)) static int is_marked(lua_State *L, const void *p) {
 lua_rawgetp(L, MARKED_TABLE, p);
 if (lua_isnil(L, -1)) {
  lua_pop(L, 1);
  return 0;
 } else {
  lua_pop(L, 1);
  return 1;
 }
}
