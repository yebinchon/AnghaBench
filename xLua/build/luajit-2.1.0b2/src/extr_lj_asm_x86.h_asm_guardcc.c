
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int loopinv; scalar_t__ realign; int * invmcp; int * mcp; int snapno; int J; } ;
typedef int MCode ;
typedef TYPE_1__ ASMState ;


 scalar_t__ LJ_UNLIKELY (int) ;
 int emit_jcc (TYPE_1__*,int,int *) ;
 int emit_sjcc (TYPE_1__*,int,int *) ;
 int * exitstub_addr (int ,int ) ;
 int jmprel (int *,int *) ;

__attribute__((used)) static void asm_guardcc(ASMState *as, int cc)
{
  MCode *target = exitstub_addr(as->J, as->snapno);
  MCode *p = as->mcp;
  if (LJ_UNLIKELY(p == as->invmcp)) {
    as->loopinv = 1;
    *(int32_t *)(p+1) = jmprel(p+5, target);
    target = p;
    cc ^= 1;
    if (as->realign) {
      emit_sjcc(as, cc, target);
      return;
    }
  }
  emit_jcc(as, cc, target);
}
