
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; int cap; } ;
typedef TYPE_1__ TTree ;
typedef int CompileState ;
typedef int Charset ;


 int Cclose ;
 int ICloseCapture ;
 int IFullCapture ;
 int IOpenCapture ;
 int MAXOFF ;
 int addinstcap (int *,int ,int ,int ,int) ;
 int codegen (int *,int ,int ,int,int const*) ;
 int fixedlen (int ) ;
 int hascaptures (int ) ;
 int sib1 (TYPE_1__*) ;

__attribute__((used)) static void codecapture (CompileState *compst, TTree *tree, int tt,
                         const Charset *fl) {
  int len = fixedlen(sib1(tree));
  if (len >= 0 && len <= MAXOFF && !hascaptures(sib1(tree))) {
    codegen(compst, sib1(tree), 0, tt, fl);
    addinstcap(compst, IFullCapture, tree->cap, tree->key, len);
  }
  else {
    addinstcap(compst, IOpenCapture, tree->cap, tree->key, 0);
    codegen(compst, sib1(tree), 0, tt, fl);
    addinstcap(compst, ICloseCapture, Cclose, 0, 0);
  }
}
