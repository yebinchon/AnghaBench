
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union value {int dummy; } value ;
typedef void* uint8_t ;
struct table {int sizearray; int sizehash; struct node* hash; union value* array; void** arraytype; int L; } ;
struct node {scalar_t__ nocolliding; void* valuetype; } ;
struct context {int L; struct table* tbl; } ;
typedef int lua_State ;


 void* VALUETYPE_NIL ;
 int countsize (int *,int) ;
 int fillcolliding (int *,struct context*) ;
 int fillnocolliding (int *,struct context*) ;
 int luaL_error (int *,char*) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_rawlen (int *,int) ;
 struct context* lua_touserdata (int *,int) ;
 scalar_t__ malloc (int) ;
 int setarray (struct context*,int *,int,int) ;

__attribute__((used)) static int
convtable(lua_State *L) {
 int i;
 struct context *ctx = lua_touserdata(L,2);
 struct table *tbl = ctx->tbl;

 tbl->L = ctx->L;

 int sizearray = lua_rawlen(L, 1);
 if (sizearray) {
  tbl->arraytype = (uint8_t *)malloc(sizearray * sizeof(uint8_t));
  if (tbl->arraytype == ((void*)0)) {
   goto memerror;
  }
  for (i=0;i<sizearray;i++) {
   tbl->arraytype[i] = VALUETYPE_NIL;
  }
  tbl->array = (union value *)malloc(sizearray * sizeof(union value));
  if (tbl->array == ((void*)0)) {
   goto memerror;
  }
  tbl->sizearray = sizearray;
 }
 int sizehash = countsize(L, sizearray);
 if (sizehash) {
  tbl->hash = (struct node *)malloc(sizehash * sizeof(struct node));
  if (tbl->hash == ((void*)0)) {
   goto memerror;
  }
  for (i=0;i<sizehash;i++) {
   tbl->hash[i].valuetype = VALUETYPE_NIL;
   tbl->hash[i].nocolliding = 0;
  }
  tbl->sizehash = sizehash;

  fillnocolliding(L, ctx);
  fillcolliding(L, ctx);
 } else {
  int i;
  for (i=1;i<=sizearray;i++) {
   lua_rawgeti(L, 1, i);
   setarray(ctx, L, -1, i);
   lua_pop(L,1);
  }
 }

 return 0;
memerror:
 return luaL_error(L, "memory error");
}
