
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ maxstacksize; scalar_t__ numparams; int is_vararg; scalar_t__ sizeupvalues; scalar_t__ nups; int sizelineinfo; int sizecode; int * code; } ;
typedef TYPE_1__ Proto ;


 scalar_t__ GET_OPCODE (int ) ;
 scalar_t__ MAXSTACK ;
 scalar_t__ OP_RETURN ;
 int VARARG_HASARG ;
 int VARARG_NEEDSARG ;
 int check (int) ;

__attribute__((used)) static int precheck (const Proto *pt) {
  check(pt->maxstacksize <= MAXSTACK);
  check(pt->numparams+(pt->is_vararg & VARARG_HASARG) <= pt->maxstacksize);
  check(!(pt->is_vararg & VARARG_NEEDSARG) ||
              (pt->is_vararg & VARARG_HASARG));
  check(pt->sizeupvalues <= pt->nups);
  check(pt->sizelineinfo == pt->sizecode || pt->sizelineinfo == 0);
  check(pt->sizecode > 0 && GET_OPCODE(pt->code[pt->sizecode-1]) == OP_RETURN);
  return 1;
}
