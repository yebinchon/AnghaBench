
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {scalar_t__ base; int ofs; } ;
struct TYPE_7__ {int loopinv; TYPE_1__ mrm; scalar_t__ realign; int * invmcp; int * mcp; int snapno; int J; } ;
typedef int MCode ;
typedef TYPE_2__ ASMState ;


 scalar_t__ LJ_GC64 ;
 scalar_t__ LJ_UNLIKELY (int) ;
 scalar_t__ RID_RIP ;
 int emit_jcc (TYPE_2__*,int,int *) ;
 int emit_sjcc (TYPE_2__*,int,int *) ;
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
      if (LJ_GC64 && LJ_UNLIKELY(as->mrm.base == RID_RIP))
 as->mrm.ofs += 2;
      emit_sjcc(as, cc, target);
      return;
    }
  }
  if (LJ_GC64 && LJ_UNLIKELY(as->mrm.base == RID_RIP))
    as->mrm.ofs += 6;
  emit_jcc(as, cc, target);
}
