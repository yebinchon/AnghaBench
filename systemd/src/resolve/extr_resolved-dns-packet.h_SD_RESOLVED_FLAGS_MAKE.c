
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int DnsProtocol ;


 int AF_INET6 ;



 int SD_RESOLVED_AUTHENTICATED ;
 int SD_RESOLVED_DNS ;
 int SD_RESOLVED_LLMNR_IPV4 ;
 int SD_RESOLVED_LLMNR_IPV6 ;
 int SD_RESOLVED_MDNS_IPV4 ;
 int SD_RESOLVED_MDNS_IPV6 ;

__attribute__((used)) static inline uint64_t SD_RESOLVED_FLAGS_MAKE(DnsProtocol protocol, int family, bool authenticated) {
        uint64_t f;



        f = authenticated ? SD_RESOLVED_AUTHENTICATED : 0;

        switch (protocol) {
        case 130:
                return f|SD_RESOLVED_DNS;

        case 129:
                return f|(family == AF_INET6 ? SD_RESOLVED_LLMNR_IPV6 : SD_RESOLVED_LLMNR_IPV4);

        case 128:
                return f|(family == AF_INET6 ? SD_RESOLVED_MDNS_IPV6 : SD_RESOLVED_MDNS_IPV4);

        default:
                return f;
        }
}
