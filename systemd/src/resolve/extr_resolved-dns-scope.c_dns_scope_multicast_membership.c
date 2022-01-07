
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct in_addr {int dummy; } ;
struct ipv6_mreq {int ipv6mr_interface; struct in6_addr ipv6mr_multiaddr; int imr_ifindex; struct in_addr imr_multiaddr; } ;
struct ip_mreqn {int ipv6mr_interface; struct in6_addr ipv6mr_multiaddr; int imr_ifindex; struct in_addr imr_multiaddr; } ;
typedef int mreqn ;
typedef int mreq ;
struct TYPE_4__ {scalar_t__ family; scalar_t__ protocol; int manager; int ifindex; struct TYPE_4__* link; } ;
typedef TYPE_1__ DnsScope ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ DNS_PROTOCOL_LLMNR ;
 int EAFNOSUPPORT ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_ADD_MEMBERSHIP ;
 int IPV6_DROP_MEMBERSHIP ;
 int IP_ADD_MEMBERSHIP ;
 int IP_DROP_MEMBERSHIP ;
 int assert (TYPE_1__*) ;
 int errno ;
 int manager_llmnr_ipv4_udp_fd (int ) ;
 int manager_llmnr_ipv6_udp_fd (int ) ;
 int manager_mdns_ipv4_fd (int ) ;
 int manager_mdns_ipv6_fd (int ) ;
 scalar_t__ setsockopt (int,int ,int ,struct ipv6_mreq*,int) ;

__attribute__((used)) static int dns_scope_multicast_membership(DnsScope *s, bool b, struct in_addr in, struct in6_addr in6) {
        int fd;

        assert(s);
        assert(s->link);

        if (s->family == AF_INET) {
                struct ip_mreqn mreqn = {
                        .imr_multiaddr = in,
                        .imr_ifindex = s->link->ifindex,
                };

                if (s->protocol == DNS_PROTOCOL_LLMNR)
                        fd = manager_llmnr_ipv4_udp_fd(s->manager);
                else
                        fd = manager_mdns_ipv4_fd(s->manager);

                if (fd < 0)
                        return fd;




                if (b)
                        (void) setsockopt(fd, IPPROTO_IP, IP_DROP_MEMBERSHIP, &mreqn, sizeof(mreqn));

                if (setsockopt(fd, IPPROTO_IP, b ? IP_ADD_MEMBERSHIP : IP_DROP_MEMBERSHIP, &mreqn, sizeof(mreqn)) < 0)
                        return -errno;

        } else if (s->family == AF_INET6) {
                struct ipv6_mreq mreq = {
                        .ipv6mr_multiaddr = in6,
                        .ipv6mr_interface = s->link->ifindex,
                };

                if (s->protocol == DNS_PROTOCOL_LLMNR)
                        fd = manager_llmnr_ipv6_udp_fd(s->manager);
                else
                        fd = manager_mdns_ipv6_fd(s->manager);

                if (fd < 0)
                        return fd;

                if (b)
                        (void) setsockopt(fd, IPPROTO_IPV6, IPV6_DROP_MEMBERSHIP, &mreq, sizeof(mreq));

                if (setsockopt(fd, IPPROTO_IPV6, b ? IPV6_ADD_MEMBERSHIP : IPV6_DROP_MEMBERSHIP, &mreq, sizeof(mreq)) < 0)
                        return -errno;
        } else
                return -EAFNOSUPPORT;

        return 0;
}
