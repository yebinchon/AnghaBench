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
typedef  scalar_t__ WORD ;
struct TYPE_10__ {int /*<<< orphan*/  cFuncs; } ;
struct TYPE_13__ {TYPE_1__ typeattr; int /*<<< orphan*/  funcdescs; int /*<<< orphan*/  pTypeLib; } ;
struct TYPE_12__ {int href_table; } ;
struct TYPE_11__ {int funcs_off; int /*<<< orphan*/  cFuncs; } ;
typedef  TYPE_2__ SLTG_TypeInfoTail ;
typedef  TYPE_3__ SLTG_TypeInfoHeader ;
typedef  int /*<<< orphan*/  SLTG_RefInfo ;
typedef  TYPE_4__ ITypeInfoImpl ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ SLTG_IMPL_MAGIC ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  typelib ; 

__attribute__((used)) static void FUNC6(char *pBlk, ITypeInfoImpl *pTI,
				  char *pNameTable, SLTG_TypeInfoHeader *pTIHeader,
				  const SLTG_TypeInfoTail *pTITail, const BYTE *hlp_strings)
{
    char *pFirstItem;
    sltg_ref_lookup_t *ref_lookup = NULL;

    if(pTIHeader->href_table != 0xffffffff) {
        ref_lookup = FUNC2((SLTG_RefInfo*)((char *)pTIHeader + pTIHeader->href_table), pTI->pTypeLib,
		    pNameTable);
    }

    pFirstItem = pBlk;

    if(*(WORD*)pFirstItem == SLTG_IMPL_MAGIC) {
        FUNC1(pFirstItem, pTI, TRUE, ref_lookup);
    }

    if (pTITail->funcs_off != 0xffff)
        FUNC0(pBlk, pBlk + pTITail->funcs_off, pTI, pTITail->cFuncs, pNameTable, ref_lookup, hlp_strings);

    FUNC5(ref_lookup);

    if (FUNC3(typelib))
        FUNC4(pTI->funcdescs, pTI->typeattr.cFuncs);
}