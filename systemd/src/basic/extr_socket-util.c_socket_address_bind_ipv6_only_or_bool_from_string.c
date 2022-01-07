
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SocketAddressBindIPv6Only ;


 int SOCKET_ADDRESS_BOTH ;
 int SOCKET_ADDRESS_IPV6_ONLY ;
 int parse_boolean (char const*) ;
 int socket_address_bind_ipv6_only_from_string (char const*) ;

SocketAddressBindIPv6Only socket_address_bind_ipv6_only_or_bool_from_string(const char *n) {
        int r;

        r = parse_boolean(n);
        if (r > 0)
                return SOCKET_ADDRESS_IPV6_ONLY;
        if (r == 0)
                return SOCKET_ADDRESS_BOTH;

        return socket_address_bind_ipv6_only_from_string(n);
}
