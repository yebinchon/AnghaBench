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
struct TYPE_3__ {int /*<<< orphan*/  Milliseconds; int /*<<< orphan*/  Second; int /*<<< orphan*/  Minute; int /*<<< orphan*/  Hour; } ;
typedef  TYPE_1__ TIME_FIELDS ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  DPFLTR_ERROR_LEVEL ; 
 int /*<<< orphan*/  DPFLTR_IHVNETWORK_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC5(int on, unsigned char *title, unsigned char *buf, int len) 
{
    int j, k;
    LARGE_INTEGER timestamp, local_time;
    TIME_FIELDS time_fields;

    if (!on) return;

    FUNC3(&timestamp);
    FUNC1(&timestamp,&local_time);
    FUNC4(&local_time, &time_fields);

    FUNC0(DPFLTR_IHVNETWORK_ID, DPFLTR_ERROR_LEVEL, 
        "[%ld].[%02u:%02u:%02u.%u] %s\n", FUNC2(), 
        time_fields.Hour, time_fields.Minute, time_fields.Second, 
        time_fields.Milliseconds, title);
    for(j = 0, k = 0; j < len; j++, k++) {
        FUNC0(DPFLTR_IHVNETWORK_ID, DPFLTR_ERROR_LEVEL,
            "%02x ", buf[j]);
        if (((k+1) % 30 == 0 && k > 0))
            FUNC0(DPFLTR_IHVNETWORK_ID, DPFLTR_ERROR_LEVEL, "\n");
    }
    FUNC0(DPFLTR_IHVNETWORK_ID, DPFLTR_ERROR_LEVEL, "\n");
}