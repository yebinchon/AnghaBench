
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int is_marked (int *,void const*) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 void* lua_topointer (int *,int) ;
 int mark_object (int *,int *) ;
 int marked (int *,void const*,int) ;

__attribute__((used)) static void mark_table(lua_State *L, lua_State *dL) {
 const void *p = lua_topointer(L, -1);
 int len = 0;

 if (!is_marked(dL, p)) {
  marked(dL, p, 0);

  lua_pushnil(L);
  while (lua_next(L, -2) != 0) {
   ++len;
   mark_object(L, dL);
   lua_pop(L, 1);
   mark_object(L, dL);
  }

  marked(dL, p, len);
 }
}
