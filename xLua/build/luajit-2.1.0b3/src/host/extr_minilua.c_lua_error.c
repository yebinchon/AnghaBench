
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int api_checknelems (int *,int) ;
 int luaG_errormsg (int *) ;

__attribute__((used)) static int lua_error(lua_State*L){
api_checknelems(L,1);
luaG_errormsg(L);
return 0;
}
