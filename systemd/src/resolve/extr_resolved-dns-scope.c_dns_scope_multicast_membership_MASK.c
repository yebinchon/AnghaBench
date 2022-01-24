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
struct in6_addr {int dummy; } ;
struct in_addr {int dummy; } ;
struct ipv6_mreq {int /*<<< orphan*/  ipv6mr_interface; struct in6_addr ipv6mr_multiaddr; int /*<<< orphan*/  imr_ifindex; struct in_addr imr_multiaddr; } ;
struct ip_mreqn {int /*<<< orphan*/  ipv6mr_interface; struct in6_addr ipv6mr_multiaddr; int /*<<< orphan*/  imr_ifindex; struct in_addr imr_multiaddr; } ;
typedef  int /*<<< orphan*/  mreqn ;
typedef  int /*<<< orphan*/  mreq ;
struct TYPE_4__ {scalar_t__ family; scalar_t__ protocol; int /*<<< orphan*/  manager; int /*<<< orphan*/  ifindex; struct TYPE_4__* link; } ;
typedef  TYPE_1__ DnsScope ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ DNS_PROTOCOL_LLMNR ; 
 int EAFNOSUPPORT ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_ADD_MEMBERSHIP ; 
 int /*<<< orphan*/  IPV6_DROP_MEMBERSHIP ; 
 int /*<<< orphan*/  IP_ADD_MEMBERSHIP ; 
 int /*<<< orphan*/  IP_DROP_MEMBERSHIP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ipv6_mreq*,int) ; 

__attribute__((used)) static int FUNC6(DnsScope *s, bool b, struct in_addr in, struct in6_addr in6) {
        int fd;

        FUNC0(s);
        FUNC0(s->link);

        if (s->family == AF_INET) {
                struct ip_mreqn mreqn = {
                        .imr_multiaddr = in,
                        .imr_ifindex = s->link->ifindex,
                };

                if (s->protocol == DNS_PROTOCOL_LLMNR)
                        fd = FUNC1(s->manager);
                else
                        fd = FUNC3(s->manager);

                if (fd < 0)
                        return fd;

                /* Always first try to drop membership before we add
                 * one. This is necessary on some devices, such as
                 * veth. */
                if (b)
                        (void) FUNC5(fd, IPPROTO_IP, IP_DROP_MEMBERSHIP, &mreqn, sizeof(mreqn));

                if (FUNC5(fd, IPPROTO_IP, b ? IP_ADD_MEMBERSHIP : IP_DROP_MEMBERSHIP, &mreqn, sizeof(mreqn)) < 0)
                        return -errno;

        } else if (s->family == AF_INET6) {
                struct ipv6_mreq mreq = {
                        .ipv6mr_multiaddr = in6,
                        .ipv6mr_interface = s->link->ifindex,
                };

                if (s->protocol == DNS_PROTOCOL_LLMNR)
                        fd = FUNC2(s->manager);
                else
                        fd = FUNC4(s->manager);

                if (fd < 0)
                        return fd;

                if (b)
                        (void) FUNC5(fd, IPPROTO_IPV6, IPV6_DROP_MEMBERSHIP, &mreq, sizeof(mreq));

                if (FUNC5(fd, IPPROTO_IPV6, b ? IPV6_ADD_MEMBERSHIP : IPV6_DROP_MEMBERSHIP, &mreq, sizeof(mreq)) < 0)
                        return -errno;
        } else
                return -EAFNOSUPPORT;

        return 0;
}