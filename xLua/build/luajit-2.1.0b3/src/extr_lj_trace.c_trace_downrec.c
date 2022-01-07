
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; scalar_t__ exitno; scalar_t__ parent; int * pc; int * pt; } ;
typedef TYPE_1__ jit_State ;


 scalar_t__ BC_RETM ;
 int LJ_TRACE_RECORD ;
 int bc_isret (scalar_t__) ;
 scalar_t__ bc_op (int ) ;
 int lua_assert (int ) ;
 int trace_start (TYPE_1__*) ;

__attribute__((used)) static int trace_downrec(jit_State *J)
{

  lua_assert(J->pt != ((void*)0));
  lua_assert(bc_isret(bc_op(*J->pc)));
  if (bc_op(*J->pc) == BC_RETM)
    return 0;
  J->parent = 0;
  J->exitno = 0;
  J->state = LJ_TRACE_RECORD;
  trace_start(J);
  return 1;
}
