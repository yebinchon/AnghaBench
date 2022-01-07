
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; int info; } ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef scalar_t__ CTSize ;


 int CCALL_RCL_INT ;
 int CCALL_RCL_MEM ;
 int CCALL_RCL_SSE ;
 int ccall_classify_struct (int *,TYPE_1__*,int*,scalar_t__) ;
 int ctype_hassize (int ) ;
 scalar_t__ ctype_isarray (int ) ;
 scalar_t__ ctype_isfp (int ) ;
 scalar_t__ ctype_isstruct (int ) ;
 TYPE_1__* ctype_rawchild (int *,TYPE_1__*) ;
 int lua_assert (int ) ;

__attribute__((used)) static void ccall_classify_ct(CTState *cts, CType *ct, int *rcl, CTSize ofs)
{
  if (ctype_isarray(ct->info)) {
    CType *cct = ctype_rawchild(cts, ct);
    CTSize eofs, esz = cct->size, asz = ct->size;
    for (eofs = 0; eofs < asz; eofs += esz)
      ccall_classify_ct(cts, cct, rcl, ofs+eofs);
  } else if (ctype_isstruct(ct->info)) {
    ccall_classify_struct(cts, ct, rcl, ofs);
  } else {
    int cl = ctype_isfp(ct->info) ? CCALL_RCL_SSE : CCALL_RCL_INT;
    lua_assert(ctype_hassize(ct->info));
    if ((ofs & (ct->size-1))) cl = CCALL_RCL_MEM;
    rcl[(ofs >= 8)] |= cl;
  }
}
