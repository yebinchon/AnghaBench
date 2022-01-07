
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int (* closef ) (int *) ;} ;
typedef TYPE_1__ LStream ;


 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 TYPE_1__* tolstream (int *) ;

__attribute__((used)) static int io_noclose (lua_State *L) {
  LStream *p = tolstream(L);
  p->closef = &io_noclose;
  lua_pushnil(L);
  lua_pushliteral(L, "cannot close standard file");
  return 2;
}
