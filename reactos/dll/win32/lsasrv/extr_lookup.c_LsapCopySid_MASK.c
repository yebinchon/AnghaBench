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
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ UCHAR ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  int /*<<< orphan*/ * PSID ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static PSID
FUNC6(PSID SrcSid)
{
    UCHAR RidCount;
    PSID DstSid;
    ULONG i;
    ULONG DstSidSize;
    PULONG p, q;

    RidCount = *FUNC4(SrcSid);
    DstSidSize = FUNC3(RidCount);

    DstSid = FUNC0(DstSidSize);
    if (DstSid == NULL)
        return NULL;

    FUNC2(DstSid,
                     FUNC1(SrcSid),
                     RidCount);

    for (i = 0; i < (ULONG)RidCount; i++)
    {
        p = FUNC5(SrcSid, i);
        q = FUNC5(DstSid, i);
        *q = *p;
    }

    return DstSid;
}