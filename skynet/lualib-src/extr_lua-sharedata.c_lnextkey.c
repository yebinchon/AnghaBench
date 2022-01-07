
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct table {int sizearray; scalar_t__* arraytype; int sizehash; int L; struct node* hash; } ;
struct node {int dummy; } ;
typedef int lua_State ;
typedef int lua_Integer ;


 int KEYTYPE_INTEGER ;
 int KEYTYPE_STRING ;
 int LUA_TNUMBER ;
 scalar_t__ VALUETYPE_NIL ;
 scalar_t__ calchash (char const*,size_t) ;
 struct table* get_table (int *,int) ;
 struct node* lookup_key (struct table*,scalar_t__,int,int,char const*,size_t) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_isinteger (int *,int) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_pushinteger (int *,int) ;
 scalar_t__ lua_tointeger (int *,int) ;
 int lua_type (int *,int) ;
 int pushfirsthash (int *,struct table*) ;
 int pushkey (int *,int ,struct node*) ;

__attribute__((used)) static int
lnextkey(lua_State *L) {
 struct table *tbl = get_table(L,1);
 if (lua_isnoneornil(L,2)) {
  if (tbl->sizearray > 0) {
   int i;
   for (i=0;i<tbl->sizearray;i++) {
    if (tbl->arraytype[i] != VALUETYPE_NIL) {
     lua_pushinteger(L, i+1);
     return 1;
    }
   }
  }
  return pushfirsthash(L, tbl);
 }
 int kt = lua_type(L,2);
 uint32_t keyhash;
 int key = 0;
 int keytype;
 size_t sz=0;
 const char *str = ((void*)0);
 int sizearray = tbl->sizearray;
 if (kt == LUA_TNUMBER) {
  if (!lua_isinteger(L, 2)) {
   return 0;
  }
  key = (int)lua_tointeger(L, 2);
  if (key > 0 && key <= sizearray) {
   lua_Integer i;
   for (i=key;i<sizearray;i++) {
    if (tbl->arraytype[i] != VALUETYPE_NIL) {
     lua_pushinteger(L, i+1);
     return 1;
    }
   }
   return pushfirsthash(L, tbl);
  }
  keyhash = (uint32_t)key;
  keytype = KEYTYPE_INTEGER;
 } else {
  str = luaL_checklstring(L, 2, &sz);
  keyhash = calchash(str, sz);
  keytype = KEYTYPE_STRING;
 }

 struct node *n = lookup_key(tbl, keyhash, key, keytype, str, sz);
 if (n) {
  ++n;
  int index = n-tbl->hash;
  if (index == tbl->sizehash) {
   return 0;
  }
  pushkey(L, tbl->L, n);
  return 1;
 } else {
  return 0;
 }
}
