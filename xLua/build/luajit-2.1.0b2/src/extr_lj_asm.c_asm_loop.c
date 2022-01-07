
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * mcp; int realign; int * mcloop; scalar_t__ fuseref; scalar_t__ sectref; int * invmcp; int flagmcp; scalar_t__ gcsteps; int snapno; int loopsnapno; } ;
typedef int MCode ;
typedef TYPE_1__ ASMState ;


 int RA_DBGX (TYPE_1__*) ;
 int RA_DBG_FLUSH () ;
 int asm_gc_check (TYPE_1__*) ;
 int asm_loop_fixup (TYPE_1__*) ;
 int asm_phi_copyspill (TYPE_1__*) ;
 int asm_phi_shuffle (TYPE_1__*) ;
 int emit_jmp (TYPE_1__*,int *) ;
 int neverfuse (TYPE_1__*) ;

__attribute__((used)) static void asm_loop(ASMState *as)
{
  MCode *mcspill;

  as->loopsnapno = as->snapno;
  if (as->gcsteps)
    asm_gc_check(as);

  as->flagmcp = as->invmcp = ((void*)0);
  as->sectref = 0;
  if (!neverfuse(as)) as->fuseref = 0;
  asm_phi_shuffle(as);
  mcspill = as->mcp;
  asm_phi_copyspill(as);
  asm_loop_fixup(as);
  as->mcloop = as->mcp;
  RA_DBGX((as, "===== LOOP ====="));
  if (!as->realign) RA_DBG_FLUSH();
  if (as->mcp != mcspill)
    emit_jmp(as, mcspill);
}
