
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int destination; int sender_port; int sender; int family; } ;
typedef TYPE_1__ Manager ;
typedef int DnsStream ;
typedef TYPE_1__ DnsPacket ;


 int LOOPBACK_IFINDEX ;
 int assert (TYPE_1__*) ;
 int dns_stream_write_packet (int *,TYPE_1__*) ;
 int log_debug_errno (int,char*) ;
 int manager_dns_stub_udp_fd (TYPE_1__*) ;
 int manager_send (TYPE_1__*,int,int ,int ,int *,int ,int *,TYPE_1__*) ;

__attribute__((used)) static int dns_stub_send(Manager *m, DnsStream *s, DnsPacket *p, DnsPacket *reply) {
        int r;

        assert(m);
        assert(p);
        assert(reply);

        if (s)
                r = dns_stream_write_packet(s, reply);
        else {
                int fd;

                fd = manager_dns_stub_udp_fd(m);
                if (fd < 0)
                        return log_debug_errno(fd, "Failed to get reply socket: %m");





                r = manager_send(m, fd, LOOPBACK_IFINDEX, p->family, &p->sender, p->sender_port, &p->destination, reply);
        }
        if (r < 0)
                return log_debug_errno(r, "Failed to send reply packet: %m");

        return 0;
}
