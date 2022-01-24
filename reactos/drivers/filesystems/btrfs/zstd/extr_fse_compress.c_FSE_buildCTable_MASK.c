#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FSE_FUNCTION_TYPE ;
typedef  int /*<<< orphan*/  FSE_CTable ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FSEC_ALLOC_TAG ; 
 int FSE_MAX_TABLESIZE ; 
 size_t FUNC2 (int /*<<< orphan*/ *,short const*,unsigned int,unsigned int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NonPagedPool ; 

size_t FUNC3(FSE_CTable* ct, const short* normalizedCounter, unsigned maxSymbolValue, unsigned tableLog)
{
    FSE_FUNCTION_TYPE* tableSymbol = FUNC0(NonPagedPool, sizeof(FSE_FUNCTION_TYPE) * FSE_MAX_TABLESIZE, FSEC_ALLOC_TAG);
    size_t ret;

    if (!tableSymbol)
        return 0;

    ret = FUNC2(ct, normalizedCounter, maxSymbolValue, tableLog, tableSymbol, sizeof(FSE_FUNCTION_TYPE) * FSE_MAX_TABLESIZE);

    FUNC1(tableSymbol);

    return ret;
}