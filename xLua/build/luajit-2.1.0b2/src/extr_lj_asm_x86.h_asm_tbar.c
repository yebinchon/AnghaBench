
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int grayagain; } ;
struct TYPE_4__ {int op1; } ;
typedef int Reg ;
typedef int MCLabel ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 int CC_Z ;
 int GCtab ;
 int LJ_GC_BLACK ;
 int RSET_GPR ;
 int XO_ARITHib ;
 int XO_GROUP3b ;
 int XOg_AND ;
 int XOg_TEST ;
 int emit_getgl (int *,int ,int ) ;
 int emit_i8 (int *,int ) ;
 int emit_label (int *) ;
 int emit_movtomro (int *,int ,int ,int ) ;
 int emit_rmro (int *,int ,int ,int ,int ) ;
 int emit_setgl (int *,int ,int ) ;
 int emit_sjcc (int *,int ,int ) ;
 TYPE_2__ gc ;
 int gclist ;
 int marked ;
 int offsetof (int ,int ) ;
 int ra_alloc1 (int *,int ,int ) ;
 int ra_scratch (int *,int ) ;
 int rset_exclude (int ,int ) ;

__attribute__((used)) static void asm_tbar(ASMState *as, IRIns *ir)
{
  Reg tab = ra_alloc1(as, ir->op1, RSET_GPR);
  Reg tmp = ra_scratch(as, rset_exclude(RSET_GPR, tab));
  MCLabel l_end = emit_label(as);
  emit_movtomro(as, tmp, tab, offsetof(GCtab, gclist));
  emit_setgl(as, tab, gc.grayagain);
  emit_getgl(as, tmp, gc.grayagain);
  emit_i8(as, ~LJ_GC_BLACK);
  emit_rmro(as, XO_ARITHib, XOg_AND, tab, offsetof(GCtab, marked));
  emit_sjcc(as, CC_Z, l_end);
  emit_i8(as, LJ_GC_BLACK);
  emit_rmro(as, XO_GROUP3b, XOg_TEST, tab, offsetof(GCtab, marked));
}
