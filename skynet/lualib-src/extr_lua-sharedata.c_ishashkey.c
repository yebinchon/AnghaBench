
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct context {TYPE_1__* tbl; } ;
typedef int lua_State ;
struct TYPE_2__ {int sizearray; } ;


 int KEYTYPE_INTEGER ;
 int KEYTYPE_STRING ;
 int LUA_TNUMBER ;
 scalar_t__ calchash (char const*,size_t) ;
 int lua_tointeger (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_type (int *,int) ;
 int stringindex (struct context*,char const*,size_t) ;

__attribute__((used)) static int
ishashkey(struct context * ctx, lua_State *L, int index, int *key, uint32_t *keyhash, int *keytype) {
 int sizearray = ctx->tbl->sizearray;
 int kt = lua_type(L, index);
 if (kt == LUA_TNUMBER) {
  *key = lua_tointeger(L, index);
  if (*key > 0 && *key <= sizearray) {
   return 0;
  }
  *keyhash = (uint32_t)*key;
  *keytype = KEYTYPE_INTEGER;
 } else {
  size_t sz = 0;
  const char * s = lua_tolstring(L, index, &sz);
  *keyhash = calchash(s, sz);
  *key = stringindex(ctx, s, sz);
  *keytype = KEYTYPE_STRING;
 }
 return 1;
}
