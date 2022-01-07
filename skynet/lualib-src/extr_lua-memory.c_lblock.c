
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int lua_pushinteger (int *,int ) ;
 size_t malloc_memory_block () ;

__attribute__((used)) static int
lblock(lua_State *L) {
 size_t t = malloc_memory_block();
 lua_pushinteger(L, (lua_Integer)t);

 return 1;
}
