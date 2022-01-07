
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int * tree; scalar_t__ codesize; int * code; } ;
typedef int TTree ;
typedef TYPE_1__ Pattern ;


 int PATTERN_T ;
 int luaL_getmetatable (int *,int ) ;
 scalar_t__ lua_newuserdata (int *,size_t) ;
 int lua_pushvalue (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int lua_setuservalue (int *,int) ;

__attribute__((used)) static TTree *newtree (lua_State *L, int len) {
  size_t size = (len - 1) * sizeof(TTree) + sizeof(Pattern);
  Pattern *p = (Pattern *)lua_newuserdata(L, size);
  luaL_getmetatable(L, PATTERN_T);
  lua_pushvalue(L, -1);
  lua_setuservalue(L, -3);
  lua_setmetatable(L, -2);
  p->code = ((void*)0); p->codesize = 0;
  return p->tree;
}
