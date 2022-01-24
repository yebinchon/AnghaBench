#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* link; } ;
typedef  TYPE_2__ sentinelRedisInstance ;
typedef  int /*<<< orphan*/  redisAsyncContext ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_9__ {char* myid; } ;
struct TYPE_7__ {int /*<<< orphan*/  pending_commands; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,char*,int /*<<< orphan*/ ,char*) ; 
 TYPE_5__ sentinel ; 
 int /*<<< orphan*/  sentinelDiscardReplyCallback ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*) ; 

void FUNC3(sentinelRedisInstance *ri, redisAsyncContext *c, char *type) {
    char name[64];

    FUNC2(name,sizeof(name),"sentinel-%.8s-%s",sentinel.myid,type);
    if (FUNC0(c, sentinelDiscardReplyCallback, ri,
        "%s SETNAME %s",
        FUNC1(ri,"CLIENT"),
        name) == C_OK)
    {
        ri->link->pending_commands++;
    }
}