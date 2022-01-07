
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TTree ;
typedef int CompileState ;
typedef int Charset ;


 int IChoice ;
 int IFail ;
 int IFailTwice ;
 int NOINST ;
 int addinstruction (int *,int ,int ) ;
 int addoffsetinst (int *,int ) ;
 int codegen (int *,int *,int ,int ,int ) ;
 int codetestset (int *,int *,int) ;
 int fullset ;
 int getfirst (int *,int ,int *) ;
 scalar_t__ headfail (int *) ;
 int jumptohere (int *,int) ;

__attribute__((used)) static void codenot (CompileState *compst, TTree *tree) {
  Charset st;
  int e = getfirst(tree, fullset, &st);
  int test = codetestset(compst, &st, e);
  if (headfail(tree))
    addinstruction(compst, IFail, 0);
  else {

    int pchoice = addoffsetinst(compst, IChoice);
    codegen(compst, tree, 0, NOINST, fullset);
    addinstruction(compst, IFailTwice, 0);
    jumptohere(compst, pchoice);
  }
  jumptohere(compst, test);
}
