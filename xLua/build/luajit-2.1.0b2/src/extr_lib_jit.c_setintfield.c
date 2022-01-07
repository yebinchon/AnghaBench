
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int int32_t ;
typedef int GCtab ;


 int lj_str_newz (int *,char const*) ;
 int lj_tab_setstr (int *,int *,int ) ;
 int setintV (int ,int ) ;

__attribute__((used)) static void setintfield(lua_State *L, GCtab *t, const char *name, int32_t val)
{
  setintV(lj_tab_setstr(L, t, lj_str_newz(L, name)), val);
}
