
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {int dispatch; } ;
struct TYPE_5__ {void** mcbot; void** mctop; void** mclim; int J; } ;
typedef void* MCode ;
typedef int ExitNo ;
typedef TYPE_1__ ASMState ;


 int EXITSTUBS_PER_GROUP ;
 TYPE_4__* J2GG (int ) ;
 int MCLIM_REDZONE ;
 void* MODRM (int ,int ,int ) ;
 int RID_ESP ;
 int XI_JMP ;
 int XI_JMPs ;
 int XI_MOVmi ;
 void* XI_PUSHi8 ;
 int XM_OFS8 ;
 int XM_SCALE1 ;
 int asm_mclimit (TYPE_1__*) ;
 int jmprel (void**,void**) ;
 int lj_mcode_commitbot (int ,void**) ;
 scalar_t__ lj_vm_exit_handler ;
 int ptr2addr (int ) ;

__attribute__((used)) static MCode *asm_exitstub_gen(ASMState *as, ExitNo group)
{
  ExitNo i, groupofs = (group*EXITSTUBS_PER_GROUP) & 0xff;
  MCode *mxp = as->mcbot;
  MCode *mxpstart = mxp;
  if (mxp + (2+2)*EXITSTUBS_PER_GROUP+8+5 >= as->mctop)
    asm_mclimit(as);

  *mxp++ = XI_PUSHi8; *mxp++ = (MCode)groupofs;
  for (i = 1; i < EXITSTUBS_PER_GROUP; i++) {
    *mxp++ = XI_JMPs; *mxp++ = (MCode)((2+2)*(EXITSTUBS_PER_GROUP - i) - 2);
    *mxp++ = XI_PUSHi8; *mxp++ = (MCode)(groupofs + i);
  }

  *mxp++ = XI_PUSHi8; *mxp++ = (MCode)((group*EXITSTUBS_PER_GROUP)>>8);


  *mxp++ = XI_MOVmi;
  *mxp++ = MODRM(XM_OFS8, 0, RID_ESP);
  *mxp++ = MODRM(XM_SCALE1, RID_ESP, RID_ESP);
  *mxp++ = 2*sizeof(void *);
  *(int32_t *)mxp = ptr2addr(J2GG(as->J)->dispatch); mxp += 4;


  *mxp++ = XI_JMP; mxp += 4;
  *((int32_t *)(mxp-4)) = jmprel(mxp, (MCode *)(void *)lj_vm_exit_handler);

  lj_mcode_commitbot(as->J, mxp);
  as->mcbot = mxp;
  as->mclim = as->mcbot + MCLIM_REDZONE;
  return mxpstart;
}
