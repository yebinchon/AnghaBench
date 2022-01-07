
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {scalar_t__ tag; int key; } ;
struct TYPE_7__ {int ps; } ;
struct TYPE_8__ {int key; TYPE_1__ u; int tag; } ;
typedef TYPE_2__ TTree ;


 int TCall ;
 scalar_t__ TRule ;
 int assert (int) ;
 int luaL_error (int *,char*,int ) ;
 int lua_gettable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int ) ;
 int lua_tonumber (int *,int) ;
 TYPE_3__* sib2 (TYPE_2__*) ;
 int val2str (int *,int) ;

__attribute__((used)) static void fixonecall (lua_State *L, int postable, TTree *g, TTree *t) {
  int n;
  lua_rawgeti(L, -1, t->key);
  lua_gettable(L, postable);
  n = lua_tonumber(L, -1);
  lua_pop(L, 1);
  if (n == 0) {
    lua_rawgeti(L, -1, t->key);
    luaL_error(L, "rule '%s' undefined in given grammar", val2str(L, -1));
  }
  t->tag = TCall;
  t->u.ps = n - (t - g);
  assert(sib2(t)->tag == TRule);
  sib2(t)->key = t->key;
}
