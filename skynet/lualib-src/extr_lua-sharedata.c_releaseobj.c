
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int * L; } ;
struct state {int ref; } ;
struct ctrl {int * update; struct table* root; } ;
typedef int lua_State ;


 int ATOM_DEC (int *) ;
 void* lua_touserdata (int *,int) ;

__attribute__((used)) static int
releaseobj(lua_State *L) {
 struct ctrl *c = lua_touserdata(L, 1);
 struct table *tbl = c->root;
 struct state *s = lua_touserdata(tbl->L, 1);
 ATOM_DEC(&s->ref);
 c->root = ((void*)0);
 c->update = ((void*)0);

 return 0;
}
