
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int IO_OUTPUT ;
 scalar_t__ fflush (int ) ;
 int getiofile (int *,int ) ;
 int luaL_fileresult (int *,int,int *) ;

__attribute__((used)) static int io_flush (lua_State *L) {
  return luaL_fileresult(L, fflush(getiofile(L, IO_OUTPUT)) == 0, ((void*)0));
}
