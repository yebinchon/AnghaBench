
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int L; } ;
struct state {int ref; } ;
struct ctrl {int * update; struct table* root; } ;
typedef int lua_State ;


 int ATOM_INC (int *) ;
 struct table* get_table (int *,int) ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 struct ctrl* lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 struct state* lua_touserdata (int ,int) ;
 int releaseobj ;

__attribute__((used)) static int
lboxconf(lua_State *L) {
 struct table * tbl = get_table(L,1);
 struct state * s = lua_touserdata(tbl->L, 1);
 ATOM_INC(&s->ref);

 struct ctrl * c = lua_newuserdata(L, sizeof(*c));
 c->root = tbl;
 c->update = ((void*)0);
 if (luaL_newmetatable(L, "confctrl")) {
  lua_pushcfunction(L, releaseobj);
  lua_setfield(L, -2, "__gc");
 }
 lua_setmetatable(L, -2);

 return 1;
}
