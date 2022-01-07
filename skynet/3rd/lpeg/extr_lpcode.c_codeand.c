
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TTree ;
typedef int CompileState ;


 int IBackCommit ;
 int IBehind ;
 int IChoice ;
 int IFail ;
 int MAXBEHIND ;
 int addinstruction (int *,int ,int) ;
 int addoffsetinst (int *,int ) ;
 int codegen (int *,int *,int ,int,int ) ;
 int fixedlen (int *) ;
 int fullset ;
 int hascaptures (int *) ;
 int jumptohere (int *,int) ;

__attribute__((used)) static void codeand (CompileState *compst, TTree *tree, int tt) {
  int n = fixedlen(tree);
  if (n >= 0 && n <= MAXBEHIND && !hascaptures(tree)) {
    codegen(compst, tree, 0, tt, fullset);
    if (n > 0)
      addinstruction(compst, IBehind, n);
  }
  else {
    int pcommit;
    int pchoice = addoffsetinst(compst, IChoice);
    codegen(compst, tree, 0, tt, fullset);
    pcommit = addoffsetinst(compst, IBackCommit);
    jumptohere(compst, pchoice);
    addinstruction(compst, IFail, 0);
    jumptohere(compst, pcommit);
  }
}
