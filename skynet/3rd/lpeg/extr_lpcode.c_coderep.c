
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cs; } ;
typedef int TTree ;
typedef int CompileState ;
typedef TYPE_1__ Charset ;


 int IChoice ;
 int IJmp ;
 int IPartialCommit ;
 int ISpan ;
 int NOINST ;
 int addcharset (int *,int ) ;
 int addinstruction (int *,int ,int ) ;
 int addoffsetinst (int *,int ) ;
 int codegen (int *,int *,int ,int,int ) ;
 int codetestset (int *,TYPE_1__*,int) ;
 scalar_t__ cs_disjoint (TYPE_1__*,TYPE_1__ const*) ;
 int fullset ;
 int getfirst (int *,int ,TYPE_1__*) ;
 int gethere (int *) ;
 scalar_t__ headfail (int *) ;
 int jumptohere (int *,int) ;
 int jumptothere (int *,int,int) ;
 scalar_t__ tocharset (int *,TYPE_1__*) ;

__attribute__((used)) static void coderep (CompileState *compst, TTree *tree, int opt,
                     const Charset *fl) {
  Charset st;
  if (tocharset(tree, &st)) {
    addinstruction(compst, ISpan, 0);
    addcharset(compst, st.cs);
  }
  else {
    int e1 = getfirst(tree, fullset, &st);
    if (headfail(tree) || (!e1 && cs_disjoint(&st, fl))) {

      int jmp;
      int test = codetestset(compst, &st, 0);
      codegen(compst, tree, 0, test, fullset);
      jmp = addoffsetinst(compst, IJmp);
      jumptohere(compst, test);
      jumptothere(compst, jmp, test);
    }
    else {


      int commit, l2;
      int test = codetestset(compst, &st, e1);
      int pchoice = NOINST;
      if (opt)
        jumptohere(compst, addoffsetinst(compst, IPartialCommit));
      else
        pchoice = addoffsetinst(compst, IChoice);
      l2 = gethere(compst);
      codegen(compst, tree, 0, NOINST, fullset);
      commit = addoffsetinst(compst, IPartialCommit);
      jumptothere(compst, commit, l2);
      jumptohere(compst, pchoice);
      jumptohere(compst, test);
    }
  }
}
