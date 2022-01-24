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
struct TYPE_3__ {int /*<<< orphan*/  sender; int /*<<< orphan*/  family; } ;
typedef  TYPE_1__ DnsPacket ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC1(DnsPacket *p) {
        /* Never cache data originating from localhost, under the
         * assumption, that it's coming from a locally DNS forwarder
         * or server, that is caching on its own. */

        return FUNC0(p->family, &p->sender) == 0;
}