
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int EOFMARK ;
 int LUA_ERRSYNTAX ;
 int lua_pop (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 size_t marklen ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int incomplete (lua_State *L, int status) {
  if (status == LUA_ERRSYNTAX) {
    size_t lmsg;
    const char *msg = lua_tolstring(L, -1, &lmsg);
    if (lmsg >= marklen && strcmp(msg + lmsg - marklen, EOFMARK) == 0) {
      lua_pop(L, 1);
      return 1;
    }
  }
  return 0;
}
