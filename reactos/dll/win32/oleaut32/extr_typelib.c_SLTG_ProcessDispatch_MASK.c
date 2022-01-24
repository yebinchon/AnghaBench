#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sltg_ref_lookup_t ;
struct TYPE_16__ {int ptr_size; } ;
struct TYPE_12__ {int cbSizeVft; int cFuncs; } ;
struct TYPE_15__ {TYPE_1__ typeattr; int /*<<< orphan*/  funcdescs; TYPE_9__* pTypeLib; } ;
struct TYPE_14__ {int href_table; } ;
struct TYPE_13__ {int vars_off; int funcs_off; int impls_off; int /*<<< orphan*/  cFuncs; int /*<<< orphan*/  cVars; } ;
typedef  TYPE_2__ SLTG_TypeInfoTail ;
typedef  TYPE_3__ SLTG_TypeInfoHeader ;
typedef  int /*<<< orphan*/  SLTG_RefInfo ;
typedef  TYPE_4__ ITypeInfoImpl ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  typelib ; 

__attribute__((used)) static void FUNC7(char *pBlk, ITypeInfoImpl *pTI,
				 char *pNameTable, SLTG_TypeInfoHeader *pTIHeader,
				 const SLTG_TypeInfoTail *pTITail, const BYTE *hlp_strings)
{
  sltg_ref_lookup_t *ref_lookup = NULL;
  if (pTIHeader->href_table != 0xffffffff)
      ref_lookup = FUNC2((SLTG_RefInfo*)((char *)pTIHeader + pTIHeader->href_table), pTI->pTypeLib,
                                  pNameTable);

  if (pTITail->vars_off != 0xffff)
    FUNC3(pBlk, pBlk + pTITail->vars_off, pTI, pTITail->cVars, pNameTable, ref_lookup, hlp_strings);

  if (pTITail->funcs_off != 0xffff)
    FUNC0(pBlk, pBlk + pTITail->funcs_off, pTI, pTITail->cFuncs, pNameTable, ref_lookup, hlp_strings);

  if (pTITail->impls_off != 0xffff)
    FUNC1(pBlk + pTITail->impls_off, pTI, FALSE, ref_lookup);

  /* this is necessary to cope with MSFT typelibs that set cFuncs to the number
   * of dispinterface functions including the IDispatch ones, so
   * ITypeInfo::GetFuncDesc takes the real value for cFuncs from cbSizeVft */
  pTI->typeattr.cbSizeVft = pTI->typeattr.cFuncs * pTI->pTypeLib->ptr_size;

  FUNC6(ref_lookup);
  if (FUNC4(typelib))
      FUNC5(pTI->funcdescs, pTI->typeattr.cFuncs);
}