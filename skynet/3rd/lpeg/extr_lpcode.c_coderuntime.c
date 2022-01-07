
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; } ;
typedef TYPE_1__ TTree ;
typedef int CompileState ;


 int Cclose ;
 int Cgroup ;
 int ICloseRunTime ;
 int IOpenCapture ;
 int addinstcap (int *,int ,int ,int ,int ) ;
 int codegen (int *,int ,int ,int,int ) ;
 int fullset ;
 int sib1 (TYPE_1__*) ;

__attribute__((used)) static void coderuntime (CompileState *compst, TTree *tree, int tt) {
  addinstcap(compst, IOpenCapture, Cgroup, tree->key, 0);
  codegen(compst, sib1(tree), 0, tt, fullset);
  addinstcap(compst, ICloseRunTime, Cclose, 0, 0);
}
