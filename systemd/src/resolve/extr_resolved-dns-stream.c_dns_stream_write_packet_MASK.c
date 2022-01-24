#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  write_queue; } ;
typedef  TYPE_1__ DnsStream ;
typedef  TYPE_1__ DnsPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC4(DnsStream *s, DnsPacket *p) {
        int r;

        FUNC0(s);
        FUNC0(p);

        r = FUNC3(s->write_queue, p);
        if (r < 0)
                return r;

        FUNC1(p);

        return FUNC2(s);
}