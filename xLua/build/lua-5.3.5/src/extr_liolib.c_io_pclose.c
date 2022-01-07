
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int f; } ;
typedef TYPE_1__ LStream ;


 int l_pclose (int *,int ) ;
 int luaL_error (int *,char*) ;
 int luaL_execresult (int *,int ) ;
 TYPE_1__* tolstream (int *) ;

__attribute__((used)) static int io_pclose (lua_State *L) {



  LStream *p = tolstream(L);
  return luaL_execresult(L, l_pclose(L, p->f));

}
