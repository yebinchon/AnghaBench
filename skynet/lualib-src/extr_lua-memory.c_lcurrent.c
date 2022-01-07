
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushinteger (int *,int ) ;
 int malloc_current_memory () ;

__attribute__((used)) static int
lcurrent(lua_State *L) {
 lua_pushinteger(L, malloc_current_memory());
 return 1;
}
