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
struct TYPE_4__ {scalar_t__ n_ref; int /*<<< orphan*/  on_stack; } ;
typedef  TYPE_1__ DnsPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

DnsPacket *FUNC1(DnsPacket *p) {

        if (!p)
                return NULL;

        FUNC0(!p->on_stack);

        FUNC0(p->n_ref > 0);
        p->n_ref++;
        return p;
}