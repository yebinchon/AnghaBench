
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_register (int *,char*,int ) ;
 int syslib ;

__attribute__((used)) static int luaopen_os(lua_State*L){
luaL_register(L,"os",syslib);
return 1;
}
