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
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {size_t n_netif; int /*<<< orphan*/  netif; } ;
typedef  TYPE_1__ MachineStatusInfo ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SD_BUS_TYPE_INT32 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const**,size_t*) ; 

__attribute__((used)) static int FUNC3(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        MachineStatusInfo *i = userdata;
        size_t l;
        const void *v;
        int r;

        FUNC0(sizeof(int32_t) == sizeof(int));
        r = FUNC2(m, SD_BUS_TYPE_INT32, &v, &l);
        if (r < 0)
                return r;
        if (r == 0)
                return -EBADMSG;

        i->n_netif = l / sizeof(int32_t);
        i->netif = FUNC1(v, l);
        if (!i->netif)
                return -ENOMEM;

        return 0;
}