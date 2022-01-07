
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int str_find_aux (int *,int ) ;

__attribute__((used)) static int str_match(lua_State*L){
return str_find_aux(L,0);
}
