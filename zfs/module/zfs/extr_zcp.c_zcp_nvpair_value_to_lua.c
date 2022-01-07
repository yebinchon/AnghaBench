
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint64_t ;
typedef int nvpair_t ;
typedef int lua_State ;
typedef int int64_t ;
 int EINVAL ;
 int fnvpair_value_boolean_value (int *) ;
 int fnvpair_value_int64 (int *) ;
 int fnvpair_value_nvlist (int *) ;
 char* fnvpair_value_string (int *) ;
 int lua_newtable (int *) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_settable (int *,int) ;
 char* nvpair_name (int *) ;
 int nvpair_type (int *) ;
 int nvpair_value_int64_array (int *,int**,int*) ;
 int nvpair_value_string_array (int *,char***,int*) ;
 int nvpair_value_uint64_array (int *,int**,int*) ;
 int snprintf (char*,int,char*,int,char*) ;
 int zcp_nvlist_to_lua (int *,int ,char*,int) ;

__attribute__((used)) static int
zcp_nvpair_value_to_lua(lua_State *state, nvpair_t *pair,
    char *errbuf, int errbuf_len)
{
 int err = 0;

 if (pair == ((void*)0)) {
  lua_pushnil(state);
  return (0);
 }

 switch (nvpair_type(pair)) {
 case 134:
  (void) lua_pushboolean(state,
      fnvpair_value_boolean_value(pair));
  break;
 case 130:
  (void) lua_pushstring(state, fnvpair_value_string(pair));
  break;
 case 133:
  (void) lua_pushinteger(state, fnvpair_value_int64(pair));
  break;
 case 131:
  err = zcp_nvlist_to_lua(state,
      fnvpair_value_nvlist(pair), errbuf, errbuf_len);
  break;
 case 129: {
  char **strarr;
  uint_t nelem;
  (void) nvpair_value_string_array(pair, &strarr, &nelem);
  lua_newtable(state);
  for (int i = 0; i < nelem; i++) {
   (void) lua_pushinteger(state, i + 1);
   (void) lua_pushstring(state, strarr[i]);
   (void) lua_settable(state, -3);
  }
  break;
 }
 case 128: {
  uint64_t *intarr;
  uint_t nelem;
  (void) nvpair_value_uint64_array(pair, &intarr, &nelem);
  lua_newtable(state);
  for (int i = 0; i < nelem; i++) {
   (void) lua_pushinteger(state, i + 1);
   (void) lua_pushinteger(state, intarr[i]);
   (void) lua_settable(state, -3);
  }
  break;
 }
 case 132: {
  int64_t *intarr;
  uint_t nelem;
  (void) nvpair_value_int64_array(pair, &intarr, &nelem);
  lua_newtable(state);
  for (int i = 0; i < nelem; i++) {
   (void) lua_pushinteger(state, i + 1);
   (void) lua_pushinteger(state, intarr[i]);
   (void) lua_settable(state, -3);
  }
  break;
 }
 default: {
  if (errbuf != ((void*)0)) {
   (void) snprintf(errbuf, errbuf_len,
       "Unhandled nvpair type %d for key '%s'",
       nvpair_type(pair), nvpair_name(pair));
  }
  return (EINVAL);
 }
 }
 return (err);
}
