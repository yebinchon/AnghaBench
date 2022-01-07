
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_isdst; scalar_t__ tm_yday; scalar_t__ tm_wday; scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int buff ;


 struct tm* gmtime (int *) ;
 struct tm* localtime (int *) ;
 int luaL_addchar (int *,char const) ;
 int luaL_addlstring (int *,char*,size_t) ;
 int luaL_buffinit (int *,int *) ;
 scalar_t__ luaL_checknumber ;
 int luaL_opt (int *,int ,int,int ) ;
 char* luaL_optstring (int *,int,char*) ;
 int luaL_pushresult (int *) ;
 int lua_createtable (int *,int ,int) ;
 int lua_pushnil (int *) ;
 int setboolfield (int *,char*,int ) ;
 int setfield (int *,char*,scalar_t__) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;

__attribute__((used)) static int os_date (lua_State *L) {
  const char *s = luaL_optstring(L, 1, "%c");
  time_t t = luaL_opt(L, (time_t)luaL_checknumber, 2, time(((void*)0)));
  struct tm *stm;
  if (*s == '!') {
    stm = gmtime(&t);
    s++;
  }
  else
    stm = localtime(&t);
  if (stm == ((void*)0))
    lua_pushnil(L);
  else if (strcmp(s, "*t") == 0) {
    lua_createtable(L, 0, 9);
    setfield(L, "sec", stm->tm_sec);
    setfield(L, "min", stm->tm_min);
    setfield(L, "hour", stm->tm_hour);
    setfield(L, "day", stm->tm_mday);
    setfield(L, "month", stm->tm_mon+1);
    setfield(L, "year", stm->tm_year+1900);
    setfield(L, "wday", stm->tm_wday+1);
    setfield(L, "yday", stm->tm_yday+1);
    setboolfield(L, "isdst", stm->tm_isdst);
  }
  else {
    char cc[3];
    luaL_Buffer b;
    cc[0] = '%'; cc[2] = '\0';
    luaL_buffinit(L, &b);
    for (; *s; s++) {
      if (*s != '%' || *(s + 1) == '\0')
        luaL_addchar(&b, *s);
      else {
        size_t reslen;
        char buff[200];
        cc[1] = *(++s);
        reslen = strftime(buff, sizeof(buff), cc, stm);
        luaL_addlstring(&b, buff, reslen);
      }
    }
    luaL_pushresult(&b);
  }
  return 1;
}
