
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsPacket ;


 scalar_t__ DNS_PACKET_ANCOUNT (int *) ;
 scalar_t__ DNS_PACKET_ARCOUNT (int *) ;
 scalar_t__ DNS_PACKET_NSCOUNT (int *) ;

__attribute__((used)) static inline unsigned DNS_PACKET_RRCOUNT(DnsPacket *p) {
        return
                (unsigned) DNS_PACKET_ANCOUNT(p) +
                (unsigned) DNS_PACKET_NSCOUNT(p) +
                (unsigned) DNS_PACKET_ARCOUNT(p);
}
