
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int lua_State ;
typedef int luaL_Buffer ;


 int SIZETIMEFMT ;
 char* checkoption (int *,char const*,int,char*) ;
 int l_checktime ;
 struct tm* l_gmtime (int *,struct tm*) ;
 struct tm* l_localtime (int *,struct tm*) ;
 int luaL_addchar (int *,int ) ;
 int luaL_addsize (int *,size_t) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_error (int *,char*) ;
 int luaL_opt (int *,int ,int,int ) ;
 char* luaL_optlstring (int *,int,char*,size_t*) ;
 char* luaL_prepbuffsize (int *,int ) ;
 int luaL_pushresult (int *) ;
 int lua_createtable (int *,int ,int) ;
 int setallfields (int *,struct tm*) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strftime (char*,int ,char*,struct tm*) ;
 int time (int *) ;

__attribute__((used)) static int os_date (lua_State *L) {
  size_t slen;
  const char *s = luaL_optlstring(L, 1, "%c", &slen);
  time_t t = luaL_opt(L, l_checktime, 2, time(((void*)0)));
  const char *se = s + slen;
  struct tm tmr, *stm;
  if (*s == '!') {
    stm = l_gmtime(&t, &tmr);
    s++;
  }
  else
    stm = l_localtime(&t, &tmr);
  if (stm == ((void*)0))
    luaL_error(L, "time result cannot be represented in this installation");
  if (strcmp(s, "*t") == 0) {
    lua_createtable(L, 0, 9);
    setallfields(L, stm);
  }
  else {
    char cc[4];
    luaL_Buffer b;
    cc[0] = '%';
    luaL_buffinit(L, &b);
    while (s < se) {
      if (*s != '%')
        luaL_addchar(&b, *s++);
      else {
        size_t reslen;
        char *buff = luaL_prepbuffsize(&b, SIZETIMEFMT);
        s++;
        s = checkoption(L, s, se - s, cc + 1);
        reslen = strftime(buff, SIZETIMEFMT, cc, stm);
        luaL_addsize(&b, reslen);
      }
    }
    luaL_pushresult(&b);
  }
  return 1;
}
