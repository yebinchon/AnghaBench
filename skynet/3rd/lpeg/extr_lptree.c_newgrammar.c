
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_10__ {int n; } ;
struct TYPE_11__ {TYPE_1__ u; int tag; } ;
typedef TYPE_2__ TTree ;


 int MAXRULES ;
 int TGrammar ;
 int buildgrammar (int *,TYPE_2__*,int,int) ;
 int collectrules (int *,int,int*) ;
 int finalfix (int *,int,TYPE_2__*,int ) ;
 int initialrulename (int *,TYPE_2__*,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int lua_gettop (int *) ;
 int lua_getuservalue (int *,int) ;
 int lua_insert (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_setuservalue (int *,int) ;
 TYPE_2__* newtree (int *,int) ;
 int sib1 (TYPE_2__*) ;
 int verifygrammar (int *,TYPE_2__*) ;

__attribute__((used)) static TTree *newgrammar (lua_State *L, int arg) {
  int treesize;
  int frule = lua_gettop(L) + 2;
  int n = collectrules(L, arg, &treesize);
  TTree *g = newtree(L, treesize);
  luaL_argcheck(L, n <= MAXRULES, arg, "grammar has too many rules");
  g->tag = TGrammar; g->u.n = n;
  lua_newtable(L);
  lua_setuservalue(L, -2);
  buildgrammar(L, g, frule, n);
  lua_getuservalue(L, -1);
  finalfix(L, frule - 1, g, sib1(g));
  initialrulename(L, g, frule);
  verifygrammar(L, g);
  lua_pop(L, 1);
  lua_insert(L, -(n * 2 + 2));
  lua_pop(L, n * 2 + 1);
  return g;
}
