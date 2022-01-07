
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table {int dummy; } ;
struct TYPE_2__ {struct table* tbl; int boolean; int string; int n; int d; } ;
struct node {int valuetype; TYPE_1__ v; } ;
struct context {struct table* tbl; } ;
typedef int lua_State ;







 int VALUETYPE_BOOLEAN ;
 int VALUETYPE_INTEGER ;
 int VALUETYPE_NIL ;
 int VALUETYPE_REAL ;
 int VALUETYPE_STRING ;
 int VALUETYPE_TABLE ;
 int convtable ;
 int luaL_error (int *,char*,...) ;
 int lua_absindex (int *,int) ;
 int lua_call (int *,int,int ) ;
 int lua_isinteger (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushlightuserdata (int *,struct context*) ;
 int lua_pushvalue (int *,int) ;
 int lua_toboolean (int *,int) ;
 int lua_tointeger (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_tonumber (int *,int) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;
 scalar_t__ malloc (int) ;
 int memset (struct table*,int ,int) ;
 int stringindex (struct context*,char const*,size_t) ;

__attribute__((used)) static void
setvalue(struct context * ctx, lua_State *L, int index, struct node *n) {
 int vt = lua_type(L, index);
 switch(vt) {
 case 131:
  n->valuetype = VALUETYPE_NIL;
  break;
 case 130:
  if (lua_isinteger(L, index)) {
   n->v.d = lua_tointeger(L, index);
   n->valuetype = VALUETYPE_INTEGER;
  } else {
   n->v.n = lua_tonumber(L, index);
   n->valuetype = VALUETYPE_REAL;
  }
  break;
 case 129: {
  size_t sz = 0;
  const char * str = lua_tolstring(L, index, &sz);
  n->v.string = stringindex(ctx, str, sz);
  n->valuetype = VALUETYPE_STRING;
  break;
 }
 case 132:
  n->v.boolean = lua_toboolean(L, index);
  n->valuetype = VALUETYPE_BOOLEAN;
  break;
 case 128: {
  struct table *tbl = ctx->tbl;
  ctx->tbl = (struct table *)malloc(sizeof(struct table));
  if (ctx->tbl == ((void*)0)) {
   ctx->tbl = tbl;
   luaL_error(L, "memory error");

  }
  memset(ctx->tbl, 0, sizeof(struct table));
  int absidx = lua_absindex(L, index);

  lua_pushcfunction(L, convtable);
  lua_pushvalue(L, absidx);
  lua_pushlightuserdata(L, ctx);

  lua_call(L, 2, 0);

  n->v.tbl = ctx->tbl;
  n->valuetype = VALUETYPE_TABLE;

  ctx->tbl = tbl;

  break;
 }
 default:
  luaL_error(L, "Unsupport value type %s", lua_typename(L, vt));
  break;
 }
}
