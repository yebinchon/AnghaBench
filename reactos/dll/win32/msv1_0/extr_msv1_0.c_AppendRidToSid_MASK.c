#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
typedef  int UCHAR ;
struct TYPE_2__ {int /*<<< orphan*/ * (* AllocateLsaHeap ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/ * PSID ;

/* Variables and functions */
 TYPE_1__ DispatchTable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
PSID
FUNC5(PSID SrcSid,
               ULONG Rid)
{
    PSID DstSid = NULL;
    UCHAR RidCount;

    RidCount = *FUNC2(SrcSid);
    if (RidCount >= 8)
        return NULL;

    DstSid = DispatchTable.AllocateLsaHeap(FUNC1(RidCount + 1));
    if (DstSid == NULL)
        return NULL;

    FUNC0(DstSid,
                  SrcSid,
                  FUNC1(RidCount));

    *FUNC2(DstSid) = RidCount + 1;
    *FUNC3(DstSid, RidCount) = Rid;

    return DstSid;
}