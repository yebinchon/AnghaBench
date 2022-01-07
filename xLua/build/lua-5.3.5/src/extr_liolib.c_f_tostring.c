
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int f; } ;
typedef TYPE_1__ LStream ;


 scalar_t__ isclosed (TYPE_1__*) ;
 int lua_pushfstring (int *,char*,int ) ;
 int lua_pushliteral (int *,char*) ;
 TYPE_1__* tolstream (int *) ;

__attribute__((used)) static int f_tostring (lua_State *L) {
  LStream *p = tolstream(L);
  if (isclosed(p))
    lua_pushliteral(L, "file (closed)");
  else
    lua_pushfstring(L, "file (%p)", p->f);
  return 1;
}
