#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int rdSize; short rdFunction; short* rdParm; } ;
typedef  int /*<<< orphan*/  POINTS ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  TYPE_1__ METARECORD ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (short*,int /*<<< orphan*/ *,short) ; 

__attribute__((used)) static BOOL FUNC5(PHYSDEV dev, short func, POINTS *pt, short count)
{
    BOOL ret;
    DWORD len;
    METARECORD *mr;

    len = sizeof(METARECORD) + (count * 4);
    if (!(mr = FUNC1( FUNC0(), HEAP_ZERO_MEMORY, len )))
	return FALSE;

    mr->rdSize = len / 2;
    mr->rdFunction = func;
    *(mr->rdParm) = count;
    FUNC4(mr->rdParm + 1, pt, count * 4);
    ret = FUNC3( dev, mr, mr->rdSize * 2);
    FUNC2( FUNC0(), 0, mr);
    return ret;
}