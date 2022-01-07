
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_12__ {int ps; } ;
struct TYPE_13__ {int cap; int tag; TYPE_1__ u; scalar_t__ key; } ;
typedef TYPE_2__ TTree ;


 int TRule ;
 int TTrue ;
 TYPE_2__* gettree (int *,int,int*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int mergektable (int *,int,TYPE_2__*) ;
 TYPE_2__* sib1 (TYPE_2__*) ;
 TYPE_2__* sib2 (TYPE_2__*) ;

__attribute__((used)) static void buildgrammar (lua_State *L, TTree *grammar, int frule, int n) {
  int i;
  TTree *nd = sib1(grammar);
  for (i = 0; i < n; i++) {
    int ridx = frule + 2*i + 1;
    int rulesize;
    TTree *rn = gettree(L, ridx, &rulesize);
    nd->tag = TRule;
    nd->key = 0;
    nd->cap = i;
    nd->u.ps = rulesize + 1;
    memcpy(sib1(nd), rn, rulesize * sizeof(TTree));
    mergektable(L, ridx, sib1(nd));
    nd = sib2(nd);
  }
  nd->tag = TTrue;
}
