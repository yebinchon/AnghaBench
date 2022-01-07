
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_11__ {int tag; int key; } ;
typedef TYPE_1__ TTree ;






 int assert (int) ;
 int correctassociativity (TYPE_1__*) ;
 int fixonecall (int *,int,TYPE_1__*,TYPE_1__*) ;
 int luaL_error (int *,char*,int ) ;
 int lua_rawgeti (int *,int,int ) ;
 int* numsiblings ;
 TYPE_1__* sib1 (TYPE_1__*) ;
 TYPE_1__* sib2 (TYPE_1__*) ;
 int val2str (int *,int) ;

__attribute__((used)) static void finalfix (lua_State *L, int postable, TTree *g, TTree *t) {
 tailcall:
  switch (t->tag) {
    case 130:
      return;
    case 129: {
      if (g != ((void*)0))
        fixonecall(L, postable, g, t);
      else {
        lua_rawgeti(L, -1, t->key);
        luaL_error(L, "rule '%s' used outside a grammar", val2str(L, -1));
      }
      break;
    }
    case 128: case 131:
      correctassociativity(t);
      break;
  }
  switch (numsiblings[t->tag]) {
    case 1:
      t = sib1(t); goto tailcall;
    case 2:
      finalfix(L, postable, g, sib1(t));
      t = sib2(t); goto tailcall;
    default: assert(numsiblings[t->tag] == 0); break;
  }
}
