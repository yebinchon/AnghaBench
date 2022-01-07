
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {scalar_t__ tag; scalar_t__ key; } ;
typedef TYPE_1__ TTree ;


 int MAXRULES ;
 scalar_t__ TRule ;
 scalar_t__ TTrue ;
 int assert (int) ;
 scalar_t__ checkloops (TYPE_1__*) ;
 int luaL_error (int *,char*,int ) ;
 int lua_rawgeti (int *,int,scalar_t__) ;
 TYPE_1__* sib1 (TYPE_1__*) ;
 TYPE_1__* sib2 (TYPE_1__*) ;
 int val2str (int *,int) ;
 int verifyrule (int *,TYPE_1__*,int*,int ,int ) ;

__attribute__((used)) static void verifygrammar (lua_State *L, TTree *grammar) {
  int passed[MAXRULES];
  TTree *rule;

  for (rule = sib1(grammar); rule->tag == TRule; rule = sib2(rule)) {
    if (rule->key == 0) continue;
    verifyrule(L, sib1(rule), passed, 0, 0);
  }
  assert(rule->tag == TTrue);

  for (rule = sib1(grammar); rule->tag == TRule; rule = sib2(rule)) {
    if (rule->key == 0) continue;
    if (checkloops(sib1(rule))) {
      lua_rawgeti(L, -1, rule->key);
      luaL_error(L, "empty loop in rule '%s'", val2str(L, -1));
    }
  }
  assert(rule->tag == TTrue);
}
