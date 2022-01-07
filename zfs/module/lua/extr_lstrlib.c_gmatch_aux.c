
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int lua_Integer ;
struct TYPE_4__ {scalar_t__ matchdepth; char const* src_init; char const* src_end; char const* p_end; scalar_t__ level; int * L; } ;
typedef TYPE_1__ MatchState ;


 scalar_t__ MAXCCALLS ;
 int lua_assert (int) ;
 int lua_pushinteger (int *,int) ;
 int lua_replace (int *,int ) ;
 scalar_t__ lua_tointeger (int *,int ) ;
 char* lua_tolstring (int *,int ,size_t*) ;
 int lua_upvalueindex (int) ;
 char* match (TYPE_1__*,char const*,char const*) ;
 int push_captures (TYPE_1__*,char const*,char const*) ;

__attribute__((used)) static int gmatch_aux (lua_State *L) {
  MatchState ms;
  size_t ls, lp;
  const char *s = lua_tolstring(L, lua_upvalueindex(1), &ls);
  const char *p = lua_tolstring(L, lua_upvalueindex(2), &lp);
  const char *src;
  ms.L = L;
  ms.matchdepth = MAXCCALLS;
  ms.src_init = s;
  ms.src_end = s+ls;
  ms.p_end = p + lp;
  for (src = s + (size_t)lua_tointeger(L, lua_upvalueindex(3));
       src <= ms.src_end;
       src++) {
    const char *e;
    ms.level = 0;
    lua_assert(ms.matchdepth == MAXCCALLS);
    if ((e = match(&ms, src, p)) != ((void*)0)) {
      lua_Integer newstart = e-s;
      if (e == src) newstart++;
      lua_pushinteger(L, newstart);
      lua_replace(L, lua_upvalueindex(3));
      return push_captures(&ms, src, e);
    }
  }
  return 0;
}
