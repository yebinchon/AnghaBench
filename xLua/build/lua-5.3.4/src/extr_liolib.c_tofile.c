
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int * f; } ;
typedef TYPE_1__ LStream ;
typedef int FILE ;


 scalar_t__ isclosed (TYPE_1__*) ;
 int luaL_error (int *,char*) ;
 int lua_assert (int *) ;
 TYPE_1__* tolstream (int *) ;

__attribute__((used)) static FILE *tofile (lua_State *L) {
  LStream *p = tolstream(L);
  if (isclosed(p))
    luaL_error(L, "attempt to use a closed file");
  lua_assert(p->f);
  return p->f;
}
