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
typedef  int /*<<< orphan*/  huffNodeTable ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  HUF_CElt ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HUFC_ALLOC_TAG ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NonPagedPool ; 

size_t FUNC3 (HUF_CElt* tree, const U32* count, U32 maxSymbolValue, U32 maxNbBits)
{
    huffNodeTable* nodeTable = FUNC0(NonPagedPool, sizeof(huffNodeTable), HUFC_ALLOC_TAG);
    size_t ret;

    if (!nodeTable)
        return 0;

    ret = FUNC2(tree, count, maxSymbolValue, maxNbBits, nodeTable, sizeof(huffNodeTable));

    FUNC1(nodeTable);

    return ret;
}