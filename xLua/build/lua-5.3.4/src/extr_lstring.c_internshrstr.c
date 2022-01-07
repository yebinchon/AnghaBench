
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_13__ {int size; int nuse; TYPE_4__** hash; } ;
struct TYPE_14__ {TYPE_2__ strt; int seed; } ;
typedef TYPE_3__ global_State ;
struct TYPE_12__ {TYPE_4__* hnext; } ;
struct TYPE_15__ {size_t shrlen; TYPE_1__ u; } ;
typedef TYPE_4__ TString ;


 TYPE_3__* G (int *) ;
 int LUA_TSHRSTR ;
 int MAX_INT ;
 size_t cast_byte (size_t) ;
 int changewhite (TYPE_4__*) ;
 TYPE_4__* createstrobj (int *,size_t,int ,unsigned int) ;
 int getstr (TYPE_4__*) ;
 scalar_t__ isdead (TYPE_3__*,TYPE_4__*) ;
 size_t lmod (unsigned int,int) ;
 unsigned int luaS_hash (char const*,size_t,int ) ;
 int luaS_resize (int *,int) ;
 int lua_assert (int ) ;
 scalar_t__ memcmp (char const*,int ,size_t) ;
 int memcpy (int ,char const*,size_t) ;

__attribute__((used)) static TString *internshrstr (lua_State *L, const char *str, size_t l) {
  TString *ts;
  global_State *g = G(L);
  unsigned int h = luaS_hash(str, l, g->seed);
  TString **list = &g->strt.hash[lmod(h, g->strt.size)];
  lua_assert(str != ((void*)0));
  for (ts = *list; ts != ((void*)0); ts = ts->u.hnext) {
    if (l == ts->shrlen &&
        (memcmp(str, getstr(ts), l * sizeof(char)) == 0)) {

      if (isdead(g, ts))
        changewhite(ts);
      return ts;
    }
  }
  if (g->strt.nuse >= g->strt.size && g->strt.size <= MAX_INT/2) {
    luaS_resize(L, g->strt.size * 2);
    list = &g->strt.hash[lmod(h, g->strt.size)];
  }
  ts = createstrobj(L, l, LUA_TSHRSTR, h);
  memcpy(getstr(ts), str, l * sizeof(char));
  ts->shrlen = cast_byte(l);
  ts->u.hnext = *list;
  *list = ts;
  g->strt.nuse++;
  return ts;
}
