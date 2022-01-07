
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
typedef int gboolean ;


 int AF_INET ;
 int AF_INET6 ;
 int FALSE ;
 int TRUE ;
 int evutil_inet_pton (int ,char const*,unsigned char*) ;

gboolean is_ipaddr_valid (const char *ip)
{
    unsigned char buf[sizeof(struct in6_addr)];

    if (evutil_inet_pton(AF_INET, ip, buf) == 1)
        return TRUE;

    if (evutil_inet_pton(AF_INET6, ip, buf) == 1)
        return TRUE;

    return FALSE;
}
