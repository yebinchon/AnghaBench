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
typedef  int /*<<< orphan*/  sentinelRedisInstance ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_2__ {int /*<<< orphan*/  masters; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ sentinel ; 

sentinelRedisInstance *FUNC3(char *name) {
    sentinelRedisInstance *ri;
    sds sdsname = FUNC2(name);

    ri = FUNC0(sentinel.masters,sdsname);
    FUNC1(sdsname);
    return ri;
}