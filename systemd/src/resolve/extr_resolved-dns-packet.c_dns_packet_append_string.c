
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const DnsPacket ;


 int assert (char const*) ;
 int dns_packet_append_raw_string (char const*,char const*,int ,size_t*) ;
 int strlen (char const*) ;

int dns_packet_append_string(DnsPacket *p, const char *s, size_t *start) {
        assert(p);
        assert(s);

        return dns_packet_append_raw_string(p, s, strlen(s), start);
}
