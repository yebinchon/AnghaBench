
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int * code; } ;
typedef TYPE_1__ Pattern ;
typedef int Instruction ;
typedef int Capture ;


 int INITCAPSIZE ;
 int SUBJIDX ;
 int getcaptures (int *,char const*,char const*,int) ;
 TYPE_1__* getpatt (int *,int,int *) ;
 int getpattern (int *,int) ;
 size_t initposition (int *,size_t) ;
 char* luaL_checklstring (int *,int ,size_t*) ;
 int lua_gettop (int *) ;
 int lua_getuservalue (int *,int) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushnil (int *) ;
 char* match (int *,char const*,char const*,char const*,int *,int *,int) ;
 int * prepcompile (int *,TYPE_1__*,int) ;

__attribute__((used)) static int lp_match (lua_State *L) {
  Capture capture[INITCAPSIZE];
  const char *r;
  size_t l;
  Pattern *p = (getpatt(L, 1, ((void*)0)), getpattern(L, 1));
  Instruction *code = (p->code != ((void*)0)) ? p->code : prepcompile(L, p, 1);
  const char *s = luaL_checklstring(L, SUBJIDX, &l);
  size_t i = initposition(L, l);
  int ptop = lua_gettop(L);
  lua_pushnil(L);
  lua_pushlightuserdata(L, capture);
  lua_getuservalue(L, 1);
  r = match(L, s, s + i, s + l, code, capture, ptop);
  if (r == ((void*)0)) {
    lua_pushnil(L);
    return 1;
  }
  return getcaptures(L, s, r, ptop);
}
