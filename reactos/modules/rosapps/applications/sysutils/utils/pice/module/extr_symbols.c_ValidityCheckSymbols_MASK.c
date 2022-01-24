#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  ulSizeOfStabsStrings; scalar_t__ ulOffsetToStabsStrings; int /*<<< orphan*/  ulSizeOfStabs; scalar_t__ ulOffsetToStabs; int /*<<< orphan*/  ulSizeOfGlobalsStrings; scalar_t__ ulOffsetToGlobalsStrings; int /*<<< orphan*/  ulSizeOfGlobals; scalar_t__ ulOffsetToGlobals; int /*<<< orphan*/  ulSizeOfHeader; scalar_t__ ulOffsetToHeaders; } ;
typedef  TYPE_1__ PICE_SYMBOLFILE_HEADER ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC2(PICE_SYMBOLFILE_HEADER* pSymbols)
{
	BOOLEAN bRet;

    FUNC0((0,"ValidityCheckSymbols()\n"));

	bRet = (FUNC1((ULONG)pSymbols + pSymbols->ulOffsetToHeaders,pSymbols->ulSizeOfHeader) &&
		    FUNC1((ULONG)pSymbols + pSymbols->ulOffsetToGlobals,pSymbols->ulSizeOfGlobals) &&
		    FUNC1((ULONG)pSymbols + pSymbols->ulOffsetToGlobalsStrings,pSymbols->ulSizeOfGlobalsStrings) &&
		    FUNC1((ULONG)pSymbols + pSymbols->ulOffsetToStabs,pSymbols->ulSizeOfStabs) &&
		    FUNC1((ULONG)pSymbols + pSymbols->ulOffsetToStabsStrings,pSymbols->ulSizeOfStabsStrings));

    FUNC0((0,"ValidityCheckSymbols(): symbols are %s\n",bRet?"VALID":"NOT VALID"));

	return bRet;
}