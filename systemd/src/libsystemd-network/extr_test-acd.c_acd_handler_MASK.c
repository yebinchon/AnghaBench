#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sd_ipv4acd ;

/* Variables and functions */
#define  SD_IPV4ACD_EVENT_BIND 130 
#define  SD_IPV4ACD_EVENT_CONFLICT 129 
#define  SD_IPV4ACD_EVENT_STOP 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(sd_ipv4acd *acd, int event, void *userdata) {
        FUNC1(acd);

        switch (event) {
        case SD_IPV4ACD_EVENT_BIND:
                FUNC3("bound");
                break;
        case SD_IPV4ACD_EVENT_CONFLICT:
                FUNC3("conflict");
                break;
        case SD_IPV4ACD_EVENT_STOP:
                FUNC2("the client was stopped");
                break;
        default:
                FUNC0("invalid ACD event");
        }
}