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
struct TYPE_5__ {TYPE_1__* opt; } ;
struct TYPE_4__ {unsigned int ttl; } ;
typedef  TYPE_2__ DnsPacket ;

/* Variables and functions */

__attribute__((used)) static inline bool FUNC0(DnsPacket *p) {
        if (!p->opt)
                return false;

        return !!(p->opt->ttl & (1U << 15));
}