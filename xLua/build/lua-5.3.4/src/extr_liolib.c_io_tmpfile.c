
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int * f; } ;
typedef TYPE_1__ LStream ;


 int luaL_fileresult (int *,int ,int *) ;
 TYPE_1__* newfile (int *) ;
 int * tmpfile () ;

__attribute__((used)) static int io_tmpfile (lua_State *L) {
  LStream *p = newfile(L);
  p->f = tmpfile();
  return (p->f == ((void*)0)) ? luaL_fileresult(L, 0, ((void*)0)) : 1;
}
