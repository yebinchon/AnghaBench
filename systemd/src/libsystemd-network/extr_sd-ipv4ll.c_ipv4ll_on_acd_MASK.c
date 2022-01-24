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
struct TYPE_8__ {int /*<<< orphan*/  claimed_address; int /*<<< orphan*/  address; } ;
typedef  TYPE_1__ sd_ipv4ll ;
typedef  TYPE_1__ sd_ipv4acd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
#define  SD_IPV4ACD_EVENT_BIND 130 
#define  SD_IPV4ACD_EVENT_CONFLICT 129 
#define  SD_IPV4ACD_EVENT_STOP 128 
 int /*<<< orphan*/  SD_IPV4LL_EVENT_BIND ; 
 int /*<<< orphan*/  SD_IPV4LL_EVENT_CONFLICT ; 
 int /*<<< orphan*/  SD_IPV4LL_EVENT_STOP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 

void FUNC5(sd_ipv4acd *acd, int event, void *userdata) {
        sd_ipv4ll *ll = userdata;
        FUNC0(ll);
        int r;

        FUNC1(acd);
        FUNC1(ll);

        switch (event) {

        case SD_IPV4ACD_EVENT_STOP:
                FUNC3(ll, SD_IPV4LL_EVENT_STOP);
                ll->claimed_address = 0;
                break;

        case SD_IPV4ACD_EVENT_BIND:
                ll->claimed_address = ll->address;
                FUNC3(ll, SD_IPV4LL_EVENT_BIND);
                break;

        case SD_IPV4ACD_EVENT_CONFLICT:
                /* if an address was already bound we must call up to the
                   user to handle this, otherwise we just try again */
                if (ll->claimed_address != 0) {
                        FUNC3(ll, SD_IPV4LL_EVENT_CONFLICT);

                        ll->claimed_address = 0;
                } else {
                        r = FUNC4(ll);
                        if (r < 0)
                                goto error;
                }

                break;

        default:
                FUNC2("Invalid IPv4ACD event.");
        }

        return;

error:
        FUNC3(ll, SD_IPV4LL_EVENT_STOP);
}