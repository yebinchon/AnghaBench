
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ fflush (int ) ;
 int luaL_fileresult (int *,int,int *) ;
 int tofile (int *) ;

__attribute__((used)) static int f_flush (lua_State *L) {
  return luaL_fileresult(L, fflush(tofile(L)) == 0, ((void*)0));
}
