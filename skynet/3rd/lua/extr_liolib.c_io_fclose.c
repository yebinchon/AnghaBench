
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int f; } ;
typedef TYPE_1__ LStream ;


 int fclose (int ) ;
 int luaL_fileresult (int *,int,int *) ;
 TYPE_1__* tolstream (int *) ;

__attribute__((used)) static int io_fclose (lua_State *L) {
  LStream *p = tolstream(L);
  int res = fclose(p->f);
  return luaL_fileresult(L, (res == 0), ((void*)0));
}
