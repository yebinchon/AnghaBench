
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int base_open (int *) ;

__attribute__((used)) static int luaopen_base(lua_State*L){
base_open(L);
return 1;
}
