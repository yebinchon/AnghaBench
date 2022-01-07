
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_19__ {int* cs; } ;
struct TYPE_17__ {int ps; } ;
struct TYPE_18__ {int tag; TYPE_1__ u; } ;
typedef TYPE_2__ TTree ;
typedef TYPE_3__ Charset ;


 int TNot ;
 int TSeq ;
 TYPE_2__* getpatt (int *,int,int*) ;
 size_t i ;
 int joinktables (int *,int,TYPE_2__*,int) ;
 int loopset (size_t,int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 TYPE_2__* newcharset (int *) ;
 TYPE_2__* newtree (int *,int) ;
 TYPE_2__* sib1 (TYPE_2__*) ;
 TYPE_2__* sib2 (TYPE_2__*) ;
 scalar_t__ tocharset (TYPE_2__*,TYPE_3__*) ;
 int* treebuffer (TYPE_2__*) ;

__attribute__((used)) static int lp_sub (lua_State *L) {
  Charset st1, st2;
  int s1, s2;
  TTree *t1 = getpatt(L, 1, &s1);
  TTree *t2 = getpatt(L, 2, &s2);
  if (tocharset(t1, &st1) && tocharset(t2, &st2)) {
    TTree *t = newcharset(L);
    loopset(i, treebuffer(t)[i] = st1.cs[i] & ~st2.cs[i]);
  }
  else {
    TTree *tree = newtree(L, 2 + s1 + s2);
    tree->tag = TSeq;
    tree->u.ps = 2 + s2;
    sib1(tree)->tag = TNot;
    memcpy(sib1(sib1(tree)), t2, s2 * sizeof(TTree));
    memcpy(sib2(tree), t1, s1 * sizeof(TTree));
    joinktables(L, 1, sib1(tree), 2);
  }
  return 1;
}
