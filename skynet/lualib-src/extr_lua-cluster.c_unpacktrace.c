
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushlstring (int *,char const*,int) ;

__attribute__((used)) static int
unpacktrace(lua_State *L, const char * buf, int sz) {
 lua_pushlstring(L, buf + 1, sz - 1);
 return 1;
}
