
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sltg_ref_lookup_t ;
typedef int WORD ;
struct TYPE_13__ {int vt; } ;
struct TYPE_12__ {TYPE_4__* tdescAlias; int pTypeLib; } ;
struct TYPE_11__ {int href_table; } ;
struct TYPE_10__ {int tdescalias_vt; scalar_t__ simple_alias; } ;
typedef int TYPEDESC ;
typedef TYPE_1__ SLTG_TypeInfoTail ;
typedef TYPE_2__ SLTG_TypeInfoHeader ;
typedef int SLTG_RefInfo ;
typedef TYPE_3__ ITypeInfoImpl ;


 int * SLTG_DoRefs (int *,int ,char*) ;
 int SLTG_DoType (int *,char*,TYPE_4__*,int *) ;
 TYPE_4__* heap_alloc (int) ;
 TYPE_4__* heap_alloc_zero (int) ;
 int heap_free (int *) ;

__attribute__((used)) static void SLTG_ProcessAlias(char *pBlk, ITypeInfoImpl *pTI,
         char *pNameTable, SLTG_TypeInfoHeader *pTIHeader,
         const SLTG_TypeInfoTail *pTITail)
{
  WORD *pType;
  sltg_ref_lookup_t *ref_lookup = ((void*)0);

  if (pTITail->simple_alias) {

      pTI->tdescAlias = heap_alloc_zero(sizeof(TYPEDESC));
      pTI->tdescAlias->vt = pTITail->tdescalias_vt;
      return;
  }

  if(pTIHeader->href_table != 0xffffffff) {
      ref_lookup = SLTG_DoRefs((SLTG_RefInfo*)((char *)pTIHeader + pTIHeader->href_table), pTI->pTypeLib,
    pNameTable);
  }


  pType = (WORD *)(pBlk + pTITail->tdescalias_vt);

  pTI->tdescAlias = heap_alloc(sizeof(TYPEDESC));
  SLTG_DoType(pType, pBlk, pTI->tdescAlias, ref_lookup);

  heap_free(ref_lookup);
}
