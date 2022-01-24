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
struct rewriteConfigState {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_2__ {scalar_t__ notify_keyspace_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__ server ; 

void FUNC7(struct rewriteConfigState *state) {
    int force = server.notify_keyspace_events != 0;
    char *option = "notify-keyspace-events";
    sds line, flags;

    flags = FUNC0(server.notify_keyspace_events);
    line = FUNC6(option);
    line = FUNC2(line, " ", 1);
    line = FUNC3(line, flags, FUNC5(flags));
    FUNC4(flags);
    FUNC1(state,option,line,force);
}