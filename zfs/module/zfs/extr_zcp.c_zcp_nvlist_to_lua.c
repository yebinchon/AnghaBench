
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int lua_State ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ DATA_TYPE_BOOLEAN ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushstring (int *,int ) ;
 int lua_setfield (int *,int,int ) ;
 int lua_settable (int *,int) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 int zcp_nvpair_value_to_lua (int *,int *,char*,int) ;

int
zcp_nvlist_to_lua(lua_State *state, nvlist_t *nvl,
    char *errbuf, int errbuf_len)
{
 nvpair_t *pair;
 lua_newtable(state);
 boolean_t has_values = B_FALSE;




 for (pair = nvlist_next_nvpair(nvl, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(nvl, pair)) {
  if (nvpair_type(pair) != DATA_TYPE_BOOLEAN) {
   has_values = B_TRUE;
   break;
  }
 }
 if (!has_values) {
  int i = 1;
  for (pair = nvlist_next_nvpair(nvl, ((void*)0));
      pair != ((void*)0); pair = nvlist_next_nvpair(nvl, pair)) {
   (void) lua_pushinteger(state, i);
   (void) lua_pushstring(state, nvpair_name(pair));
   (void) lua_settable(state, -3);
   i++;
  }
 } else {
  for (pair = nvlist_next_nvpair(nvl, ((void*)0));
      pair != ((void*)0); pair = nvlist_next_nvpair(nvl, pair)) {
   int err = zcp_nvpair_value_to_lua(state, pair,
       errbuf, errbuf_len);
   if (err != 0) {
    lua_pop(state, 1);
    return (err);
   }
   (void) lua_setfield(state, -2, nvpair_name(pair));
  }
 }
 return (0);
}
