
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ tag; } ;
typedef TYPE_1__ TTree ;
typedef int CompileState ;


 int ICall ;
 int IJmp ;
 int IRet ;
 int MAXRULES ;
 int NOINST ;
 scalar_t__ TRule ;
 scalar_t__ TTrue ;
 int addinstruction (int *,int ,int ) ;
 int addoffsetinst (int *,int ) ;
 int assert (int) ;
 int codegen (int *,TYPE_1__*,int ,int ,int ) ;
 int correctcalls (int *,int*,int,int) ;
 int fullset ;
 int gethere (int *) ;
 int jumptohere (int *,int) ;
 TYPE_1__* sib1 (TYPE_1__*) ;
 TYPE_1__* sib2 (TYPE_1__*) ;

__attribute__((used)) static void codegrammar (CompileState *compst, TTree *grammar) {
  int positions[MAXRULES];
  int rulenumber = 0;
  TTree *rule;
  int firstcall = addoffsetinst(compst, ICall);
  int jumptoend = addoffsetinst(compst, IJmp);
  int start = gethere(compst);
  jumptohere(compst, firstcall);
  for (rule = sib1(grammar); rule->tag == TRule; rule = sib2(rule)) {
    positions[rulenumber++] = gethere(compst);
    codegen(compst, sib1(rule), 0, NOINST, fullset);
    addinstruction(compst, IRet, 0);
  }
  assert(rule->tag == TTrue);
  jumptohere(compst, jumptoend);
  correctcalls(compst, positions, start, gethere(compst));
}
