
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int * closef; int * f; } ;
typedef TYPE_1__ LStream ;
typedef int FILE ;


 int LUA_REGISTRYINDEX ;
 int io_noclose ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char const*) ;
 TYPE_1__* newprefile (int *) ;

__attribute__((used)) static void createstdfile (lua_State *L, FILE *f, const char *k,
                           const char *fname) {
  LStream *p = newprefile(L);
  p->f = f;
  p->closef = &io_noclose;
  if (k != ((void*)0)) {
    lua_pushvalue(L, -1);
    lua_setfield(L, LUA_REGISTRYINDEX, k);
  }
  lua_setfield(L, -2, fname);
}
