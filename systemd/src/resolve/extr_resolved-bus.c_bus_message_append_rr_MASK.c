#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  wire_format_size; int /*<<< orphan*/  wire_format; TYPE_1__* key; } ;
typedef  TYPE_2__ sd_bus_message ;
struct TYPE_12__ {int /*<<< orphan*/  type; int /*<<< orphan*/  class; } ;
typedef  TYPE_2__ DnsResourceRecord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (TYPE_2__*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,char,char*) ; 

__attribute__((used)) static int FUNC6(sd_bus_message *m, DnsResourceRecord *rr, int ifindex) {
        int r;

        FUNC0(m);
        FUNC0(rr);

        r = FUNC5(m, 'r', "iqqay");
        if (r < 0)
                return r;

        r = FUNC2(m, "iqq",
                                  ifindex,
                                  rr->key->class,
                                  rr->key->type);
        if (r < 0)
                return r;

        r = FUNC1(rr, false);
        if (r < 0)
                return r;

        r = FUNC3(m, 'y', rr->wire_format, rr->wire_format_size);
        if (r < 0)
                return r;

        return FUNC4(m);
}