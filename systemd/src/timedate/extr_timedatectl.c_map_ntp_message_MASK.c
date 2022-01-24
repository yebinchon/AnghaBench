#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  str; } ;
struct TYPE_5__ {int /*<<< orphan*/  spike; TYPE_1__ reference; int /*<<< orphan*/  jitter; int /*<<< orphan*/  packet_count; int /*<<< orphan*/  dest; int /*<<< orphan*/  trans; int /*<<< orphan*/  recv; int /*<<< orphan*/  origin; int /*<<< orphan*/  root_dispersion; int /*<<< orphan*/  root_delay; int /*<<< orphan*/  precision; int /*<<< orphan*/  stratum; int /*<<< orphan*/  mode; int /*<<< orphan*/  version; int /*<<< orphan*/  leap; } ;
typedef  TYPE_2__ NTPStatusInfo ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,char,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char,void const**,size_t*) ; 

__attribute__((used)) static int FUNC6(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        NTPStatusInfo *p = userdata;
        const void *d;
        size_t sz;
        int32_t b;
        int r;

        FUNC0(p);

        r = FUNC2(m, 'r', "uuuuittayttttbtt");
        if (r < 0)
                return r;

        r = FUNC4(m, "uuuuitt",
                                &p->leap, &p->version, &p->mode, &p->stratum, &p->precision,
                                &p->root_delay, &p->root_dispersion);
        if (r < 0)
                return r;

        r = FUNC5(m, 'y', &d, &sz);
        if (r < 0)
                return r;

        r = FUNC4(m, "ttttbtt",
                                &p->origin, &p->recv, &p->trans, &p->dest,
                                &b, &p->packet_count, &p->jitter);
        if (r < 0)
                return r;

        r = FUNC3(m);
        if (r < 0)
                return r;

        if (sz != 4)
                return -EINVAL;

        FUNC1(p->reference.str, d, sz);

        p->spike = b;

        return 0;
}