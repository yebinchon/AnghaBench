
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct table {size_t sizehash; struct node* hash; } ;
struct node {scalar_t__ valuetype; int key; int keytype; size_t keyhash; int next; int nocolliding; } ;
struct context {struct table* tbl; } ;
typedef int lua_State ;


 scalar_t__ VALUETYPE_NIL ;
 int ishashkey (struct context*,int *,int,int*,size_t*,int*) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int setarray (struct context*,int *,int,int) ;
 int setvalue (struct context*,int *,int,struct node*) ;

__attribute__((used)) static void
fillnocolliding(lua_State *L, struct context *ctx) {
 struct table * tbl = ctx->tbl;
 lua_pushnil(L);
 while (lua_next(L, 1) != 0) {
  int key;
  int keytype;
  uint32_t keyhash;
  if (!ishashkey(ctx, L, -2, &key, &keyhash, &keytype)) {
   setarray(ctx, L, -1, key);
  } else {
   struct node * n = &tbl->hash[keyhash % tbl->sizehash];
   if (n->valuetype == VALUETYPE_NIL) {
    n->key = key;
    n->keytype = keytype;
    n->keyhash = keyhash;
    n->next = -1;
    n->nocolliding = 1;
    setvalue(ctx, L, -1, n);
   }
  }
  lua_pop(L,1);
 }
}
