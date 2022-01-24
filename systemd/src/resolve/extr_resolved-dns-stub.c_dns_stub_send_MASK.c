#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  destination; int /*<<< orphan*/  sender_port; int /*<<< orphan*/  sender; int /*<<< orphan*/  family; } ;
typedef  TYPE_1__ Manager ;
typedef  int /*<<< orphan*/  DnsStream ;
typedef  TYPE_1__ DnsPacket ;

/* Variables and functions */
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int,char*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(Manager *m, DnsStream *s, DnsPacket *p, DnsPacket *reply) {
        int r;

        FUNC0(m);
        FUNC0(p);
        FUNC0(reply);

        if (s)
                r = FUNC1(s, reply);
        else {
                int fd;

                fd = FUNC3(m);
                if (fd < 0)
                        return FUNC2(fd, "Failed to get reply socket: %m");

                /* Note that it is essential here that we explicitly choose the source IP address for this packet. This
                 * is because otherwise the kernel will choose it automatically based on the routing table and will
                 * thus pick 127.0.0.1 rather than 127.0.0.53. */

                r = FUNC4(m, fd, LOOPBACK_IFINDEX, p->family, &p->sender, p->sender_port, &p->destination, reply);
        }
        if (r < 0)
                return FUNC2(r, "Failed to send reply packet: %m");

        return 0;
}