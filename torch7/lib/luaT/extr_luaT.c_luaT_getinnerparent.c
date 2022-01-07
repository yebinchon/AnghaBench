
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,char const*,char*) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_istable (int *,int) ;
 int lua_remove (int *,int) ;
 int strcspn (char const*,char*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

void luaT_getinnerparent(lua_State *L, const char *tname)
{

  char term[256];
  char chars[] = {'.', '\0'};
  const char *tname_full = tname;


  int n = strcspn(tname, chars);
  strncpy(term, tname, n);
  term[n] = '\0';
  lua_getglobal(L, term);
  tname += n + 1;


  n = strcspn(tname, chars);
  while(n < strlen(tname))
  {

    if(!lua_istable(L, -1)){
      strncpy(term, tname_full, tname - tname_full - 1);
      term[tname - tname_full] = '\0';
      luaL_error(L, "while creating metatable %s: bad argument #1 (%s is an invalid module name)", tname_full, term);
    }
    strncpy(term, tname, n);
    term[n] = '\0';
    lua_getfield(L, -1, term);
    lua_remove(L, -2);
    tname += n + 1;
    n = strcspn(tname, chars);
  }


  if(!lua_istable(L, -1)){
    strncpy(term, tname_full, tname - tname_full - 1);
    term[tname - tname_full] = '\0';
    luaL_error(L, "while creating metatable %s: bad argument #1 (%s is an invalid module name)", tname_full, term);
  }
}
