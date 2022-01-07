
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int IO_INPUT ;
 int g_read (int *,int ,int) ;
 int getiofile (int *,int ) ;

__attribute__((used)) static int io_read (lua_State *L) {
  return g_read(L, getiofile(L, IO_INPUT), 1);
}
