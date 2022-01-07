
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int aux_close (int *) ;
 int tofile (int *) ;

__attribute__((used)) static int f_close (lua_State *L) {
  tofile(L);
  return aux_close(L);
}
