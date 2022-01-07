
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int FF_table_new ;
 int lj_cf_table_new ;
 int lj_lib_postreg (int *,int ,int ,char*) ;

__attribute__((used)) static int luaopen_table_new(lua_State *L)
{
  return lj_lib_postreg(L, lj_cf_table_new, FF_table_new, "new");
}
