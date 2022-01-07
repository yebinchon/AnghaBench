
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ k; } ;
struct TYPE_10__ {int * prev; TYPE_7__ v; } ;
struct TYPE_9__ {int * fs; } ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ LHSVarList ;
typedef int FuncState ;


 scalar_t__ VCALL ;
 int bcptr (int *,TYPE_7__*) ;
 int expr_primary (TYPE_1__*,TYPE_7__*) ;
 int parse_assignment (TYPE_1__*,TYPE_2__*,int) ;
 int setbc_b (int ,int) ;

__attribute__((used)) static void parse_call_assign(LexState *ls)
{
  FuncState *fs = ls->fs;
  LHSVarList vl;
  expr_primary(ls, &vl.v);
  if (vl.v.k == VCALL) {
    setbc_b(bcptr(fs, &vl.v), 1);
  } else {
    vl.prev = ((void*)0);
    parse_assignment(ls, &vl, 1);
  }
}
