
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {char* namewhat; char* what; char* short_src; int linedefined; int name; } ;
typedef TYPE_1__ lua_Debug ;


 int lua_pushfstring (int *,char*,char*,...) ;
 int lua_pushliteral (int *,char*) ;
 int lua_remove (int *,int) ;
 int lua_tostring (int *,int) ;
 scalar_t__ pushglobalfuncname (int *,TYPE_1__*) ;

__attribute__((used)) static void pushfuncname (lua_State *L, lua_Debug *ar) {
  if (pushglobalfuncname(L, ar)) {
    lua_pushfstring(L, "function '%s'", lua_tostring(L, -1));
    lua_remove(L, -2);
  }
  else if (*ar->namewhat != '\0')
    lua_pushfstring(L, "%s '%s'", ar->namewhat, ar->name);
  else if (*ar->what == 'm')
      lua_pushliteral(L, "main chunk");
  else if (*ar->what != 'C')
    lua_pushfstring(L, "function <%s:%d>", ar->short_src, ar->linedefined);
  else
    lua_pushliteral(L, "?");
}
