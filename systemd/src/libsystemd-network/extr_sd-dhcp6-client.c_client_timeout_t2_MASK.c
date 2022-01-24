#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {int /*<<< orphan*/  timeout_t2; struct TYPE_7__* lease; } ;
typedef  TYPE_1__ sd_event_source ;
typedef  TYPE_1__ sd_dhcp6_client ;

/* Variables and functions */
 int /*<<< orphan*/  DHCP6_STATE_REBIND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC4(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_dhcp6_client *client = userdata;

        FUNC0(s);
        FUNC0(client);
        FUNC0(client->lease);

        (void) FUNC2(client->timeout_t2);

        FUNC3(client, "Timeout T2");

        FUNC1(client, DHCP6_STATE_REBIND);

        return 0;
}