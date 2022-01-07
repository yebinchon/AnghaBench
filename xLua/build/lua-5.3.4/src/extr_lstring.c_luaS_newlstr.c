
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TString ;


 size_t LUAI_MAXSHORTLEN ;
 int MAX_SIZE ;
 int getstr (int *) ;
 int * internshrstr (int *,char const*,size_t) ;
 int luaM_toobig (int *) ;
 int * luaS_createlngstrobj (int *,size_t) ;
 int memcpy (int ,char const*,size_t) ;

TString *luaS_newlstr (lua_State *L, const char *str, size_t l) {
  if (l <= LUAI_MAXSHORTLEN)
    return internshrstr(L, str, l);
  else {
    TString *ts;
    if (l >= (MAX_SIZE - sizeof(TString))/sizeof(char))
      luaM_toobig(L);
    ts = luaS_createlngstrobj(L, l);
    memcpy(getstr(ts), str, l * sizeof(char));
    return ts;
  }
}
