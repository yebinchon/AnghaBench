#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sltg_ref_lookup_t ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_13__ {int vt; } ;
struct TYPE_12__ {TYPE_4__* tdescAlias; int /*<<< orphan*/  pTypeLib; } ;
struct TYPE_11__ {int href_table; } ;
struct TYPE_10__ {int tdescalias_vt; scalar_t__ simple_alias; } ;
typedef  int /*<<< orphan*/  TYPEDESC ;
typedef  TYPE_1__ SLTG_TypeInfoTail ;
typedef  TYPE_2__ SLTG_TypeInfoHeader ;
typedef  int /*<<< orphan*/  SLTG_RefInfo ;
typedef  TYPE_3__ ITypeInfoImpl ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int) ; 
 TYPE_4__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(char *pBlk, ITypeInfoImpl *pTI,
			      char *pNameTable, SLTG_TypeInfoHeader *pTIHeader,
			      const SLTG_TypeInfoTail *pTITail)
{
  WORD *pType;
  sltg_ref_lookup_t *ref_lookup = NULL;

  if (pTITail->simple_alias) {
      /* if simple alias, no more processing required */
      pTI->tdescAlias = FUNC3(sizeof(TYPEDESC));
      pTI->tdescAlias->vt = pTITail->tdescalias_vt;
      return;
  }

  if(pTIHeader->href_table != 0xffffffff) {
      ref_lookup = FUNC0((SLTG_RefInfo*)((char *)pTIHeader + pTIHeader->href_table), pTI->pTypeLib,
		  pNameTable);
  }

  /* otherwise it is an offset to a type */
  pType = (WORD *)(pBlk + pTITail->tdescalias_vt);

  pTI->tdescAlias = FUNC2(sizeof(TYPEDESC));
  FUNC1(pType, pBlk, pTI->tdescAlias, ref_lookup);

  FUNC4(ref_lookup);
}