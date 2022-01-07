
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int * invmcp; int * mcp; scalar_t__ loopref; scalar_t__ loopinv; int * mctop; scalar_t__ realign; } ;
typedef int MCode ;
typedef TYPE_1__ ASMState ;


 int JIT_F_LEA_AGU ;
 scalar_t__ LJ_64 ;
 int XI_NOP ;

__attribute__((used)) static void asm_tail_prep(ASMState *as)
{
  MCode *p = as->mctop;

  if (as->realign) {
    int i = ((int)(intptr_t)as->realign) & 15;

    while (i-- > 0)
      *--p = XI_NOP;
    as->mctop = p;
    p -= (as->loopinv ? 5 : 2);
  } else {
    p -= 5;
  }
  if (as->loopref) {
    as->invmcp = as->mcp = p;
  } else {

    as->mcp = p - (((as->flags & JIT_F_LEA_AGU) ? 7 : 6) + (LJ_64 ? 1 : 0));
    as->invmcp = ((void*)0);
  }
}
