#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
struct TYPE_4__ {int /*<<< orphan*/  family; int /*<<< orphan*/  address; } ;
typedef  TYPE_1__ DnsServer ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char,char*) ; 

int FUNC7(sd_bus_message *reply, DnsServer *s, bool with_ifindex) {
        int r;

        FUNC1(reply);

        if (!s) {
                if (with_ifindex)
                        return FUNC3(reply, "(iiay)", 0, AF_UNSPEC, 0);
                else
                        return FUNC3(reply, "(iay)", AF_UNSPEC, 0);
        }

        r = FUNC6(reply, 'r', with_ifindex ? "iiay" : "iay");
        if (r < 0)
                return r;

        if (with_ifindex) {
                r = FUNC3(reply, "i", FUNC2(s));
                if (r < 0)
                        return r;
        }

        r = FUNC3(reply, "i", s->family);
        if (r < 0)
                return r;

        r = FUNC4(reply, 'y', &s->address, FUNC0(s->family));
        if (r < 0)
                return r;

        return FUNC5(reply);
}