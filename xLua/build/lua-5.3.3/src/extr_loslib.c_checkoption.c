
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* LUA_STRFTIMEOPTIONS ;
 int luaL_argerror (int *,int,int ) ;
 int lua_pushfstring (int *,char*,char const*) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static const char *checkoption (lua_State *L, const char *conv, char *buff) {
  const char *option;
  int oplen = 1;
  for (option = LUA_STRFTIMEOPTIONS; *option != '\0'; option += oplen) {
    if (*option == '|')
      oplen++;
    else if (memcmp(conv, option, oplen) == 0) {
      memcpy(buff, conv, oplen);
      buff[oplen] = '\0';
      return conv + oplen;
    }
  }
  luaL_argerror(L, 1,
    lua_pushfstring(L, "invalid conversion specifier '%%%s'", conv));
  return conv;
}
