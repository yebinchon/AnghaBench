#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int marked; struct TYPE_3__* domains_next; } ;
typedef  TYPE_1__ DnsSearchDomain ;

/* Variables and functions */

void FUNC0(DnsSearchDomain *first) {
        if (!first)
                return;

        first->marked = true;
        FUNC0(first->domains_next);
}