
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ mcode; } ;
struct TYPE_5__ {TYPE_1__ cb; } ;
typedef scalar_t__ MSize ;
typedef TYPE_2__ CTState ;


 uintptr_t CALLBACK_MCODE_SIZE ;
 scalar_t__ CALLBACK_OFS2SLOT (scalar_t__) ;
 scalar_t__ CALLBACK_SLOT2OFS (scalar_t__) ;

MSize lj_ccallback_ptr2slot(CTState *cts, void *p)
{
  uintptr_t ofs = (uintptr_t)((uint8_t *)p -(uint8_t *)cts->cb.mcode);
  if (ofs < CALLBACK_MCODE_SIZE) {
    MSize slot = CALLBACK_OFS2SLOT((MSize)ofs);
    if (CALLBACK_SLOT2OFS(slot) == (MSize)ofs)
      return slot;
  }
  return ~0u;
}
