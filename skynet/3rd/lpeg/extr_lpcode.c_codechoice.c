
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tag; } ;
typedef TYPE_1__ TTree ;
typedef int CompileState ;
typedef int Charset ;


 int IChoice ;
 int ICommit ;
 int IJmp ;
 int IPartialCommit ;
 int NOINST ;
 scalar_t__ TTrue ;
 int addoffsetinst (int *,int ) ;
 int codegen (int *,TYPE_1__*,int,int,int const*) ;
 int codetestset (int *,int *,int) ;
 int cs_disjoint (int *,int *) ;
 int const* fullset ;
 int getfirst (TYPE_1__*,int const*,int *) ;
 scalar_t__ headfail (TYPE_1__*) ;
 int jumptohere (int *,int) ;

__attribute__((used)) static void codechoice (CompileState *compst, TTree *p1, TTree *p2, int opt,
                        const Charset *fl) {
  int emptyp2 = (p2->tag == TTrue);
  Charset cs1, cs2;
  int e1 = getfirst(p1, fullset, &cs1);
  if (headfail(p1) ||
      (!e1 && (getfirst(p2, fl, &cs2), cs_disjoint(&cs1, &cs2)))) {

    int test = codetestset(compst, &cs1, 0);
    int jmp = NOINST;
    codegen(compst, p1, 0, test, fl);
    if (!emptyp2)
      jmp = addoffsetinst(compst, IJmp);
    jumptohere(compst, test);
    codegen(compst, p2, opt, NOINST, fl);
    jumptohere(compst, jmp);
  }
  else if (opt && emptyp2) {

    jumptohere(compst, addoffsetinst(compst, IPartialCommit));
    codegen(compst, p1, 1, NOINST, fullset);
  }
  else {


    int pcommit;
    int test = codetestset(compst, &cs1, e1);
    int pchoice = addoffsetinst(compst, IChoice);
    codegen(compst, p1, emptyp2, test, fullset);
    pcommit = addoffsetinst(compst, ICommit);
    jumptohere(compst, pchoice);
    jumptohere(compst, test);
    codegen(compst, p2, opt, NOINST, fl);
    jumptohere(compst, pcommit);
  }
}
