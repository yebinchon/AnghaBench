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
typedef  int uint64_t ;
typedef  scalar_t__ sds ;
struct TYPE_3__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 int TRACKING_TABLE_SIZE ; 
 int /*<<< orphan*/ * TrackingTable ; 
 scalar_t__ TrackingTableUsedSlots ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(robj *keyobj) {
    if (TrackingTable == NULL || TrackingTableUsedSlots == 0) return;

    sds sdskey = keyobj->ptr;
    uint64_t hash = FUNC0(0,
        (unsigned char*)sdskey,FUNC1(sdskey))&(TRACKING_TABLE_SIZE-1);
    FUNC2(hash);
}