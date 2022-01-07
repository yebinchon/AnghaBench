
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dwMask; int wEffects; } ;
struct TYPE_7__ {int nFlags; TYPE_1__ fmt; scalar_t__ pCell; } ;
struct TYPE_8__ {TYPE_2__ para; } ;
struct TYPE_9__ {TYPE_3__ member; } ;
typedef TYPE_4__ ME_DisplayItem ;


 int MEPF_CELL ;
 int MEPF_ROWEND ;
 int MEPF_ROWSTART ;
 int PFE_TABLE ;
 int PFE_TABLEROWDELIMITER ;
 int PFM_TABLE ;
 int PFM_TABLEROWDELIMITER ;

__attribute__((used)) static void ME_UpdateTableFlags(ME_DisplayItem *para)
{
  para->member.para.fmt.dwMask |= PFM_TABLE|PFM_TABLEROWDELIMITER;
  if (para->member.para.pCell) {
    para->member.para.nFlags |= MEPF_CELL;
  } else {
    para->member.para.nFlags &= ~MEPF_CELL;
  }
  if (para->member.para.nFlags & MEPF_ROWEND) {
    para->member.para.fmt.wEffects |= PFE_TABLEROWDELIMITER;
  } else {
    para->member.para.fmt.wEffects &= ~PFE_TABLEROWDELIMITER;
  }
  if (para->member.para.nFlags & (MEPF_ROWSTART|MEPF_CELL|MEPF_ROWEND))
    para->member.para.fmt.wEffects |= PFE_TABLE;
  else
    para->member.para.fmt.wEffects &= ~PFE_TABLE;
}
