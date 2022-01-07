
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sltg_ref_lookup_t ;
typedef scalar_t__ WORD ;
struct TYPE_7__ {int pTypeLib; } ;
struct TYPE_6__ {int href_table; } ;
typedef int SLTG_TypeInfoTail ;
typedef TYPE_1__ SLTG_TypeInfoHeader ;
typedef int SLTG_RefInfo ;
typedef TYPE_2__ ITypeInfoImpl ;


 int FALSE ;
 int SLTG_DoImpls (char*,TYPE_2__*,int ,int *) ;
 int * SLTG_DoRefs (int *,int ,char*) ;
 scalar_t__ SLTG_IMPL_MAGIC ;
 int heap_free (int *) ;

__attribute__((used)) static void SLTG_ProcessCoClass(char *pBlk, ITypeInfoImpl *pTI,
    char *pNameTable, SLTG_TypeInfoHeader *pTIHeader,
    SLTG_TypeInfoTail *pTITail)
{
    char *pFirstItem;
    sltg_ref_lookup_t *ref_lookup = ((void*)0);

    if(pTIHeader->href_table != 0xffffffff) {
        ref_lookup = SLTG_DoRefs((SLTG_RefInfo*)((char *)pTIHeader + pTIHeader->href_table), pTI->pTypeLib,
      pNameTable);
    }

    pFirstItem = pBlk;

    if(*(WORD*)pFirstItem == SLTG_IMPL_MAGIC) {
        SLTG_DoImpls(pFirstItem, pTI, FALSE, ref_lookup);
    }
    heap_free(ref_lookup);
}
