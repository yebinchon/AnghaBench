
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct table {int sizearray; int L; int * array; int * arraytype; } ;
struct node {int v; int valuetype; } ;
typedef int lua_State ;


 int KEYTYPE_INTEGER ;
 int KEYTYPE_STRING ;
 int LUA_TNUMBER ;
 scalar_t__ calchash (char const*,size_t) ;
 struct table* get_table (int *,int) ;
 struct node* lookup_key (struct table*,scalar_t__,int,int,char const*,size_t) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,int ) ;
 int lua_isinteger (int *,int) ;
 scalar_t__ lua_tointeger (int *,int) ;
 int lua_tonumber (int *,int) ;
 int lua_type (int *,int) ;
 int pushvalue (int *,int ,int ,int *) ;

__attribute__((used)) static int
lindexconf(lua_State *L) {
 struct table *tbl = get_table(L,1);
 int kt = lua_type(L,2);
 uint32_t keyhash;
 int key = 0;
 int keytype;
 size_t sz = 0;
 const char * str = ((void*)0);
 if (kt == LUA_TNUMBER) {
  if (!lua_isinteger(L, 2)) {
   return luaL_error(L, "Invalid key %f", lua_tonumber(L, 2));
  }
  key = (int)lua_tointeger(L, 2);
  if (key > 0 && key <= tbl->sizearray) {
   --key;
   pushvalue(L, tbl->L, tbl->arraytype[key], &tbl->array[key]);
   return 1;
  }
  keytype = KEYTYPE_INTEGER;
  keyhash = (uint32_t)key;
 } else {
  str = luaL_checklstring(L, 2, &sz);
  keyhash = calchash(str, sz);
  keytype = KEYTYPE_STRING;
 }

 struct node *n = lookup_key(tbl, keyhash, key, keytype, str, sz);
 if (n) {
  pushvalue(L, tbl->L, n->valuetype, &n->v);
  return 1;
 } else {
  return 0;
 }
}
