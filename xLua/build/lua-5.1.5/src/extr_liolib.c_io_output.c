
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int IO_OUTPUT ;
 int g_iofile (int *,int ,char*) ;

__attribute__((used)) static int io_output (lua_State *L) {
  return g_iofile(L, IO_OUTPUT, "w");
}
