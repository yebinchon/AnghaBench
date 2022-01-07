
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int size; int info; scalar_t__ sib; } ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef int CTSize ;


 int CCALL_RCL_INT ;
 int CCALL_RCL_MEM ;
 int CTA_SUBTYPE ;
 int ccall_classify_ct (int *,TYPE_1__*,int*,int) ;
 TYPE_1__* ctype_get (int *,scalar_t__) ;
 scalar_t__ ctype_isbitfield (int ) ;
 scalar_t__ ctype_isfield (int ) ;
 scalar_t__ ctype_isxattrib (int ,int ) ;
 TYPE_1__* ctype_rawchild (int *,TYPE_1__*) ;

__attribute__((used)) static int ccall_classify_struct(CTState *cts, CType *ct, int *rcl, CTSize ofs)
{
  if (ct->size > 16) return CCALL_RCL_MEM;
  while (ct->sib) {
    CTSize fofs;
    ct = ctype_get(cts, ct->sib);
    fofs = ofs+ct->size;
    if (ctype_isfield(ct->info))
      ccall_classify_ct(cts, ctype_rawchild(cts, ct), rcl, fofs);
    else if (ctype_isbitfield(ct->info))
      rcl[(fofs >= 8)] |= CCALL_RCL_INT;
    else if (ctype_isxattrib(ct->info, CTA_SUBTYPE))
      ccall_classify_struct(cts, ctype_rawchild(cts, ct), rcl, fofs);
  }
  return ((rcl[0]|rcl[1]) & CCALL_RCL_MEM);
}
