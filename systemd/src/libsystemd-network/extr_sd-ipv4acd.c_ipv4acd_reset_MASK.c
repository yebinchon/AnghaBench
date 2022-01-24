#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  receive_message_event_source; int /*<<< orphan*/  timer_event_source; } ;
typedef  TYPE_1__ sd_ipv4acd ;

/* Variables and functions */
 int /*<<< orphan*/  IPV4ACD_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(sd_ipv4acd *acd) {
        FUNC0(acd);

        (void) FUNC1(acd->timer_event_source);
        acd->receive_message_event_source = FUNC4(acd->receive_message_event_source);

        acd->fd = FUNC3(acd->fd);

        FUNC2(acd, IPV4ACD_STATE_INIT, true);
}