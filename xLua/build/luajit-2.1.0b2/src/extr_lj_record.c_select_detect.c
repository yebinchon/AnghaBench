
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* L; int * pc; } ;
typedef TYPE_3__ jit_State ;
typedef int cTValue ;
struct TYPE_7__ {scalar_t__ ffid; } ;
struct TYPE_9__ {TYPE_2__ c; } ;
struct TYPE_6__ {int * base; } ;
typedef int BCIns ;


 scalar_t__ BC_CALLM ;
 scalar_t__ FF_select ;
 size_t bc_a (int ) ;
 int bc_b (int ) ;
 int bc_c (int ) ;
 scalar_t__ bc_op (int ) ;
 TYPE_5__* funcV (int *) ;
 scalar_t__ tvisfunc (int *) ;

__attribute__((used)) static int select_detect(jit_State *J)
{
  BCIns ins = J->pc[1];
  if (bc_op(ins) == BC_CALLM && bc_b(ins) == 2 && bc_c(ins) == 1) {
    cTValue *func = &J->L->base[bc_a(ins)];
    if (tvisfunc(func) && funcV(func)->c.ffid == FF_select)
      return 1;
  }
  return 0;
}
