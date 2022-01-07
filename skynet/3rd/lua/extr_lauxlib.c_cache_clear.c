
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int clearcache () ;

__attribute__((used)) static int
cache_clear(lua_State *L) {
 (void)(L);
 clearcache();
 return 0;
}
