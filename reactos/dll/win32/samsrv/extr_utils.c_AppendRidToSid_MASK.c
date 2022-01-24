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
typedef  int ULONG ;
typedef  int UCHAR ;
typedef  int /*<<< orphan*/ * PSID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int,int,int,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 int* FUNC3 (int /*<<< orphan*/ *,int) ; 

PSID
FUNC4(PSID SrcSid,
               ULONG Rid)
{
    ULONG Rids[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    UCHAR RidCount;
    PSID DstSid;
    ULONG i;

    RidCount = *FUNC2(SrcSid);
    if (RidCount >= 8)
        return NULL;

    for (i = 0; i < RidCount; i++)
        Rids[i] = *FUNC3(SrcSid, i);

    Rids[RidCount] = Rid;
    RidCount++;

    FUNC0(FUNC1(SrcSid),
                                RidCount,
                                Rids[0],
                                Rids[1],
                                Rids[2],
                                Rids[3],
                                Rids[4],
                                Rids[5],
                                Rids[6],
                                Rids[7],
                                &DstSid);

    return DstSid;
}