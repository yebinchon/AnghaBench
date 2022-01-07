
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ n; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ TTree ;
typedef int CompileState ;


 int IBehind ;
 int NOINST ;
 int addinstruction (int *,int ,scalar_t__) ;
 int codegen (int *,int ,int ,int ,int ) ;
 int fullset ;
 int sib1 (TYPE_2__*) ;

__attribute__((used)) static void codebehind (CompileState *compst, TTree *tree) {
  if (tree->u.n > 0)
    addinstruction(compst, IBehind, tree->u.n);
  codegen(compst, sib1(tree), 0, NOINST, fullset);
}
