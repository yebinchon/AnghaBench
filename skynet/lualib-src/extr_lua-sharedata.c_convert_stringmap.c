
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int dummy; } ;
struct state {struct table* root; scalar_t__ ref; scalar_t__ dirty; } ;
struct context {scalar_t__ string_index; int * L; } ;
typedef int lua_State ;


 int LUA_GCCOLLECT ;
 scalar_t__ LUA_MINSTACK ;
 int lua_checkstack (int *,scalar_t__) ;
 int lua_gc (int *,int ,int ) ;
 struct state* lua_newuserdata (int *,int) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_replace (int *,int) ;
 int lua_settop (int *,scalar_t__) ;
 int lua_tointeger (int *,int) ;

__attribute__((used)) static void
convert_stringmap(struct context *ctx, struct table *tbl) {
 lua_State *L = ctx->L;
 lua_checkstack(L, ctx->string_index + LUA_MINSTACK);
 lua_settop(L, ctx->string_index + 1);
 lua_pushvalue(L, 1);
 struct state * s = lua_newuserdata(L, sizeof(*s));
 s->dirty = 0;
 s->ref = 0;
 s->root = tbl;
 lua_replace(L, 1);
 lua_replace(L, -2);

 lua_pushnil(L);

 while (lua_next(L, -2) != 0) {
  int idx = lua_tointeger(L, -1);
  lua_pop(L, 1);
  lua_pushvalue(L, -1);
  lua_replace(L, idx);
 }

 lua_pop(L, 1);

 lua_gc(L, LUA_GCCOLLECT, 0);
}
