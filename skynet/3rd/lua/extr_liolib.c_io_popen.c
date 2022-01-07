
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int * f; int * closef; } ;
typedef TYPE_1__ LStream ;


 int io_pclose ;
 int * l_popen (int *,char const*,char const*) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_fileresult (int *,int ,char const*) ;
 char* luaL_optstring (int *,int,char*) ;
 TYPE_1__* newprefile (int *) ;

__attribute__((used)) static int io_popen (lua_State *L) {
  const char *filename = luaL_checkstring(L, 1);
  const char *mode = luaL_optstring(L, 2, "r");
  LStream *p = newprefile(L);
  p->f = l_popen(L, filename, mode);
  p->closef = &io_pclose;
  return (p->f == ((void*)0)) ? luaL_fileresult(L, 0, filename) : 1;
}
