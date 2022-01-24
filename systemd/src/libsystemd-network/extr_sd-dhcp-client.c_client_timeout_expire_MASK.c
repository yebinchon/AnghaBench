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
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_7__ {scalar_t__ state; } ;
typedef  TYPE_1__ sd_dhcp_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ DHCP_STATE_STOPPED ; 
 int /*<<< orphan*/  SD_DHCP_CLIENT_EVENT_EXPIRED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC5(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_dhcp_client *client = userdata;
        FUNC0(client);

        FUNC4(client, "EXPIRED");

        FUNC2(client, SD_DHCP_CLIENT_EVENT_EXPIRED);

        /* lease was lost, start over if not freed or stopped in callback */
        if (client->state != DHCP_STATE_STOPPED) {
                FUNC1(client);
                FUNC3(client);
        }

        return 0;
}