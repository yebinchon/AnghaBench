
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int * f; } ;
typedef TYPE_1__ LStream ;
typedef int FILE ;


 int IOPREF_LEN ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ isclosed (TYPE_1__*) ;
 int luaL_error (int *,char*,char const*) ;
 int lua_getfield (int *,int ,char const*) ;
 scalar_t__ lua_touserdata (int *,int) ;

__attribute__((used)) static FILE *getiofile (lua_State *L, const char *findex) {
  LStream *p;
  lua_getfield(L, LUA_REGISTRYINDEX, findex);
  p = (LStream *)lua_touserdata(L, -1);
  if (isclosed(p))
    luaL_error(L, "standard %s file is closed", findex + IOPREF_LEN);
  return p->f;
}
