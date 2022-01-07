
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int sltg_ref_lookup_t ;
struct TYPE_16__ {int ptr_size; } ;
struct TYPE_12__ {int cbSizeVft; int cFuncs; } ;
struct TYPE_15__ {TYPE_1__ typeattr; int funcdescs; TYPE_9__* pTypeLib; } ;
struct TYPE_14__ {int href_table; } ;
struct TYPE_13__ {int vars_off; int funcs_off; int impls_off; int cFuncs; int cVars; } ;
typedef TYPE_2__ SLTG_TypeInfoTail ;
typedef TYPE_3__ SLTG_TypeInfoHeader ;
typedef int SLTG_RefInfo ;
typedef TYPE_4__ ITypeInfoImpl ;
typedef int BYTE ;


 int FALSE ;
 int SLTG_DoFuncs (char*,char*,TYPE_4__*,int ,char*,int *,int const*) ;
 int SLTG_DoImpls (char*,TYPE_4__*,int ,int *) ;
 int * SLTG_DoRefs (int *,TYPE_9__*,char*) ;
 int SLTG_DoVars (char*,char*,TYPE_4__*,int ,char*,int *,int const*) ;
 scalar_t__ TRACE_ON (int ) ;
 int dump_TLBFuncDesc (int ,int) ;
 int heap_free (int *) ;
 int typelib ;

__attribute__((used)) static void SLTG_ProcessDispatch(char *pBlk, ITypeInfoImpl *pTI,
     char *pNameTable, SLTG_TypeInfoHeader *pTIHeader,
     const SLTG_TypeInfoTail *pTITail, const BYTE *hlp_strings)
{
  sltg_ref_lookup_t *ref_lookup = ((void*)0);
  if (pTIHeader->href_table != 0xffffffff)
      ref_lookup = SLTG_DoRefs((SLTG_RefInfo*)((char *)pTIHeader + pTIHeader->href_table), pTI->pTypeLib,
                                  pNameTable);

  if (pTITail->vars_off != 0xffff)
    SLTG_DoVars(pBlk, pBlk + pTITail->vars_off, pTI, pTITail->cVars, pNameTable, ref_lookup, hlp_strings);

  if (pTITail->funcs_off != 0xffff)
    SLTG_DoFuncs(pBlk, pBlk + pTITail->funcs_off, pTI, pTITail->cFuncs, pNameTable, ref_lookup, hlp_strings);

  if (pTITail->impls_off != 0xffff)
    SLTG_DoImpls(pBlk + pTITail->impls_off, pTI, FALSE, ref_lookup);




  pTI->typeattr.cbSizeVft = pTI->typeattr.cFuncs * pTI->pTypeLib->ptr_size;

  heap_free(ref_lookup);
  if (TRACE_ON(typelib))
      dump_TLBFuncDesc(pTI->funcdescs, pTI->typeattr.cFuncs);
}
