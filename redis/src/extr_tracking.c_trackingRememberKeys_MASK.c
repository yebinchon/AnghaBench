#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
typedef  scalar_t__ sds ;
struct TYPE_4__ {int /*<<< orphan*/  id; TYPE_3__** argv; int /*<<< orphan*/  argc; int /*<<< orphan*/  cmd; } ;
typedef  TYPE_1__ client ;
struct TYPE_5__ {scalar_t__ ptr; } ;

/* Variables and functions */
 int TRACKING_TABLE_SIZE ; 
 int /*<<< orphan*/ ** TrackingTable ; 
 int /*<<< orphan*/  TrackingTableUsedSlots ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(client *c) {
    int numkeys;
    int *keys = FUNC2(c->cmd,c->argv,c->argc,&numkeys);
    if (keys == NULL) return;

    for(int j = 0; j < numkeys; j++) {
        int idx = keys[j];
        sds sdskey = c->argv[idx]->ptr;
        uint64_t hash = FUNC0(0,
            (unsigned char*)sdskey,FUNC5(sdskey))&(TRACKING_TABLE_SIZE-1);
        if (TrackingTable[hash] == NULL) {
            TrackingTable[hash] = FUNC3();
            TrackingTableUsedSlots++;
        }
        FUNC4(TrackingTable[hash],
            (unsigned char*)&c->id,sizeof(c->id),NULL,NULL);
    }
    FUNC1(keys);
}