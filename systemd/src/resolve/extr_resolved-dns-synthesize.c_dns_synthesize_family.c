
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int SD_RESOLVED_DNS ;
 int SD_RESOLVED_LLMNR_IPV4 ;
 int SD_RESOLVED_LLMNR_IPV6 ;
 int SD_RESOLVED_MDNS_IPV4 ;
 int SD_RESOLVED_MDNS_IPV6 ;

int dns_synthesize_family(uint64_t flags) {







        if (!(flags & SD_RESOLVED_DNS)) {
                if (flags & (SD_RESOLVED_LLMNR_IPV4|SD_RESOLVED_MDNS_IPV4))
                        return AF_INET;
                if (flags & (SD_RESOLVED_LLMNR_IPV6|SD_RESOLVED_MDNS_IPV6))
                        return AF_INET6;
        }

        return AF_UNSPEC;
}
