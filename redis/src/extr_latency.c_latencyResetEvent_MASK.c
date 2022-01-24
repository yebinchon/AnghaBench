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
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_2__ {int /*<<< orphan*/  latency_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ server ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int FUNC6(char *event_to_reset) {
    dictIterator *di;
    dictEntry *de;
    int resets = 0;

    di = FUNC2(server.latency_events);
    while((de = FUNC3(di)) != NULL) {
        char *event = FUNC1(de);

        if (event_to_reset == NULL || FUNC5(event,event_to_reset) == 0) {
            FUNC0(server.latency_events, event);
            resets++;
        }
    }
    FUNC4(di);
    return resets;
}