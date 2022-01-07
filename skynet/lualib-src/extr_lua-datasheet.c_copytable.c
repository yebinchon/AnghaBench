
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct table {int array; int dict; int * type; } ;
struct proxy {scalar_t__ index; scalar_t__ data; } ;
struct document {scalar_t__ n; } ;
typedef int lua_State ;


 int VALUE_STRING ;
 struct table* gettable (struct document const*,scalar_t__) ;
 int luaL_error (int *,char*,scalar_t__,...) ;
 int lua_rawset (int *,int) ;
 int lua_rawseti (int *,int,int) ;
 int pushvalue (int *,int ,int ,struct document const*) ;

__attribute__((used)) static void
copytable(lua_State *L, int tbl, struct proxy *p) {
 const struct document * doc = (const struct document *)p->data;
 if (p->index < 0 || p->index >= doc->n) {
  luaL_error(L, "Invalid proxy (index = %d, total = %d)", p->index, (int)doc->n);
 }
 const struct table * t = gettable(doc, p->index);
 if (t == ((void*)0)) {
  luaL_error(L, "Invalid proxy (index = %d)", p->index);
 }
 const uint32_t * v = (const uint32_t *)((const char *)t + sizeof(uint32_t) + sizeof(uint32_t) + ((t->array + t->dict + 3) & ~3));
 int i;
 for (i=0;i<t->array;i++) {
  pushvalue(L, v++, t->type[i], doc);
  lua_rawseti(L, tbl, i+1);
 }
 for (i=0;i<t->dict;i++) {
  pushvalue(L, v++, VALUE_STRING, doc);
  pushvalue(L, v++, t->type[t->array+i], doc);
  lua_rawset(L, tbl);
 }
}
