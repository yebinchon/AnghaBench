
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int * array; int * arraytype; } ;
struct node {int v; int valuetype; } ;
struct context {struct table* tbl; } ;
typedef int lua_State ;


 int setvalue (struct context*,int *,int,struct node*) ;

__attribute__((used)) static void
setarray(struct context *ctx, lua_State *L, int index, int key) {
 struct node n;
 setvalue(ctx, L, index, &n);
 struct table *tbl = ctx->tbl;
 --key;
 tbl->arraytype[key] = n.valuetype;
 tbl->array[key] = n.v;
}
