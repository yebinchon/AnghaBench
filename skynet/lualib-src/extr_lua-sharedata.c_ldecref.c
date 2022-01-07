
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int L; } ;
struct state {int ref; } ;
typedef int lua_State ;


 int ATOM_DEC (int *) ;
 struct table* get_table (int *,int) ;
 int lua_pushinteger (int *,int) ;
 struct state* lua_touserdata (int ,int) ;

__attribute__((used)) static int
ldecref(lua_State *L) {
 struct table *tbl = get_table(L,1);
 struct state * s = lua_touserdata(tbl->L, 1);
 int ref = ATOM_DEC(&s->ref);
 lua_pushinteger(L , ref);

 return 1;
}
