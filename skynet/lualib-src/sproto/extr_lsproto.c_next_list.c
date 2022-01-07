
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encode_ud {int array_index; scalar_t__ iter_key; scalar_t__ iter_table; scalar_t__ iter_func; } ;
typedef int lua_State ;


 int lua_call (int *,int,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_next (int *,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,scalar_t__) ;

__attribute__((used)) static int
next_list(lua_State *L, struct encode_ud * self) {

 if (self->iter_func) {
  lua_pushvalue(L, self->iter_func);
  lua_pushvalue(L, self->iter_table);
  lua_pushvalue(L, self->iter_key);
  lua_call(L, 2, 2);
  if (lua_isnil(L, -2)) {
   lua_pop(L, 2);
   return 0;
  }
  return 1;
 } else {
  lua_pushvalue(L,self->iter_key);
  return lua_next(L, self->array_index);
 }
}
