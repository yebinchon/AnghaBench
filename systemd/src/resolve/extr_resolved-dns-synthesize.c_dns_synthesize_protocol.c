
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int DnsProtocol ;


 int DNS_PROTOCOL_DNS ;
 int DNS_PROTOCOL_LLMNR ;
 int DNS_PROTOCOL_MDNS ;
 int SD_RESOLVED_DNS ;
 int SD_RESOLVED_LLMNR ;
 int SD_RESOLVED_MDNS ;

DnsProtocol dns_synthesize_protocol(uint64_t flags) {







        if (flags & SD_RESOLVED_DNS)
                return DNS_PROTOCOL_DNS;
        if (flags & SD_RESOLVED_LLMNR)
                return DNS_PROTOCOL_LLMNR;
        if (flags & SD_RESOLVED_MDNS)
                return DNS_PROTOCOL_MDNS;

        return DNS_PROTOCOL_DNS;
}
