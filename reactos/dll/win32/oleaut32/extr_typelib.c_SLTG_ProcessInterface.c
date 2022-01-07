
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sltg_ref_lookup_t ;
typedef scalar_t__ WORD ;
struct TYPE_10__ {int cFuncs; } ;
struct TYPE_13__ {TYPE_1__ typeattr; int funcdescs; int pTypeLib; } ;
struct TYPE_12__ {int href_table; } ;
struct TYPE_11__ {int funcs_off; int cFuncs; } ;
typedef TYPE_2__ SLTG_TypeInfoTail ;
typedef TYPE_3__ SLTG_TypeInfoHeader ;
typedef int SLTG_RefInfo ;
typedef TYPE_4__ ITypeInfoImpl ;
typedef int BYTE ;


 int SLTG_DoFuncs (char*,char*,TYPE_4__*,int ,char*,int *,int const*) ;
 int SLTG_DoImpls (char*,TYPE_4__*,int ,int *) ;
 int * SLTG_DoRefs (int *,int ,char*) ;
 scalar_t__ SLTG_IMPL_MAGIC ;
 scalar_t__ TRACE_ON (int ) ;
 int TRUE ;
 int dump_TLBFuncDesc (int ,int ) ;
 int heap_free (int *) ;
 int typelib ;

__attribute__((used)) static void SLTG_ProcessInterface(char *pBlk, ITypeInfoImpl *pTI,
      char *pNameTable, SLTG_TypeInfoHeader *pTIHeader,
      const SLTG_TypeInfoTail *pTITail, const BYTE *hlp_strings)
{
    char *pFirstItem;
    sltg_ref_lookup_t *ref_lookup = ((void*)0);

    if(pTIHeader->href_table != 0xffffffff) {
        ref_lookup = SLTG_DoRefs((SLTG_RefInfo*)((char *)pTIHeader + pTIHeader->href_table), pTI->pTypeLib,
      pNameTable);
    }

    pFirstItem = pBlk;

    if(*(WORD*)pFirstItem == SLTG_IMPL_MAGIC) {
        SLTG_DoImpls(pFirstItem, pTI, TRUE, ref_lookup);
    }

    if (pTITail->funcs_off != 0xffff)
        SLTG_DoFuncs(pBlk, pBlk + pTITail->funcs_off, pTI, pTITail->cFuncs, pNameTable, ref_lookup, hlp_strings);

    heap_free(ref_lookup);

    if (TRACE_ON(typelib))
        dump_TLBFuncDesc(pTI->funcdescs, pTI->typeattr.cFuncs);
}
