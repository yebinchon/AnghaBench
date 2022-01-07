
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {int ncode; int * L; TYPE_1__* p; } ;
struct TYPE_8__ {int * code; int tree; } ;
typedef TYPE_1__ Pattern ;
typedef int Instruction ;
typedef TYPE_2__ CompileState ;


 int IEnd ;
 int NOINST ;
 int addinstruction (TYPE_2__*,int ,int ) ;
 int codegen (TYPE_2__*,int ,int ,int ,int ) ;
 int fullset ;
 int peephole (TYPE_2__*) ;
 int realloccode (int *,TYPE_1__*,int) ;

Instruction *compile (lua_State *L, Pattern *p) {
  CompileState compst;
  compst.p = p; compst.ncode = 0; compst.L = L;
  realloccode(L, p, 2);
  codegen(&compst, p->tree, 0, NOINST, fullset);
  addinstruction(&compst, IEnd, 0);
  realloccode(L, p, compst.ncode);
  peephole(&compst);
  return p->code;
}
