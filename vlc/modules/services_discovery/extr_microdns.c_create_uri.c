
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 scalar_t__ asprintf (char**,char*,char const*,char*,char const*,char*,int ) ;

__attribute__((used)) static char *
create_uri( const char *psz_protocol, const char *psz_ip, bool b_ipv6,
            uint16_t i_port )
{
    char *psz_uri;

    return asprintf( &psz_uri, "%s://%s%s%s:%u", psz_protocol,
                     b_ipv6 ? "[" : "", psz_ip, b_ipv6 ? "]" : "",
                     i_port ) < 0 ? ((void*)0) : psz_uri;
}
