
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_flags; scalar_t__ ai_family; int ai_protocol; int ai_socktype; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int AI_IDN ;
 int AI_NUMERICSERV ;
 int AI_PASSIVE ;
 int IN_MULTICAST (unsigned long) ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 int freeaddrinfo (struct addrinfo*) ;
 int inet_addr (char*) ;
 unsigned long ntohl (int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int vlc_getaddrinfo (char*,int ,struct addrinfo*,struct addrinfo**) ;

__attribute__((used)) static bool is_multicast_address(char *psz_dst_server)
{
    int ret;
    int ismulticast = 0;

    struct addrinfo hint = {
        .ai_socktype = SOCK_DGRAM,
        .ai_protocol = IPPROTO_UDP,
        .ai_flags = AI_NUMERICSERV | AI_IDN | AI_PASSIVE,
    }, *res;

    ret = vlc_getaddrinfo(psz_dst_server, 0, &hint, &res);
    if (ret) {
        return 0;
    } else if(res->ai_family == AF_INET) {
        unsigned long addr = ntohl(inet_addr(psz_dst_server));
        ismulticast = IN_MULTICAST(addr);
    } else if (res->ai_family == AF_INET6) {
        if (strlen(psz_dst_server) >= 5 && (strncmp("[ff00", psz_dst_server, 5) == 0 ||
                    strncmp("[FF00", psz_dst_server, 5) == 0))
            ismulticast = 1;
    }

    freeaddrinfo(res);

    return ismulticast;
}
