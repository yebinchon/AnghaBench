#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int state; struct TYPE_8__* event; } ;
typedef  TYPE_1__ sd_event_source ;
typedef  TYPE_1__ sd_dhcp6_client ;
typedef  enum DHCP6State { ____Placeholder_DHCP6State } DHCP6State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int DHCP6_STATE_REBIND ; 
 int /*<<< orphan*/  DHCP6_STATE_SOLICITATION ; 
 int /*<<< orphan*/  SD_DHCP6_CLIENT_EVENT_RESEND_EXPIRE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_dhcp6_client *client = userdata;
        FUNC0(client);
        enum DHCP6State state;

        FUNC1(s);
        FUNC1(client);
        FUNC1(client->event);

        state = client->state;

        FUNC3(client, SD_DHCP6_CLIENT_EVENT_RESEND_EXPIRE);

        /* RFC 3315, section 18.1.4., says that "...the client may choose to
           use a Solicit message to locate a new DHCP server..." */
        if (state == DHCP6_STATE_REBIND)
                FUNC2(client, DHCP6_STATE_SOLICITATION);

        return 0;
}