
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
typedef scalar_t__ lua_Integer ;
typedef int luaL_Buffer ;
struct TYPE_6__ {char const* src_end; } ;
typedef TYPE_1__ MatchState ;


 int LUA_TFUNCTION ;
 int LUA_TNUMBER ;
 int LUA_TSTRING ;
 int LUA_TTABLE ;
 int add_value (TYPE_1__*,int *,char const*,char const*,int) ;
 int luaL_addchar (int *,int ) ;
 int luaL_addlstring (int *,char const*,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_optinteger (int *,int,size_t) ;
 int luaL_pushresult (int *) ;
 int lua_pushinteger (int *,scalar_t__) ;
 int lua_type (int *,int) ;
 char* match (TYPE_1__*,char const*,char const*) ;
 int prepstate (TYPE_1__*,int *,char const*,size_t,char const*,size_t) ;
 int reprepstate (TYPE_1__*) ;

__attribute__((used)) static int str_gsub (lua_State *L) {
  size_t srcl, lp;
  const char *src = luaL_checklstring(L, 1, &srcl);
  const char *p = luaL_checklstring(L, 2, &lp);
  const char *lastmatch = ((void*)0);
  int tr = lua_type(L, 3);
  lua_Integer max_s = luaL_optinteger(L, 4, srcl + 1);
  int anchor = (*p == '^');
  lua_Integer n = 0;
  MatchState ms;
  luaL_Buffer b;
  luaL_argcheck(L, tr == LUA_TNUMBER || tr == LUA_TSTRING ||
                   tr == LUA_TFUNCTION || tr == LUA_TTABLE, 3,
                      "string/function/table expected");
  luaL_buffinit(L, &b);
  if (anchor) {
    p++; lp--;
  }
  prepstate(&ms, L, src, srcl, p, lp);
  while (n < max_s) {
    const char *e;
    reprepstate(&ms);
    if ((e = match(&ms, src, p)) != ((void*)0) && e != lastmatch) {
      n++;
      add_value(&ms, &b, src, e, tr);
      src = lastmatch = e;
    }
    else if (src < ms.src_end)
      luaL_addchar(&b, *src++);
    else break;
    if (anchor) break;
  }
  luaL_addlstring(&b, src, ms.src_end-src);
  luaL_pushresult(&b);
  lua_pushinteger(L, n);
  return 2;
}
