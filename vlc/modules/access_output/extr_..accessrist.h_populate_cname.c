
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_port; int sin6_addr; int sin6_family; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct in6_addr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int MAX_CNAME ;
 int gethostname (char*,int) ;
 int getsockname (int,struct sockaddr*,int *) ;
 char* inet_ntoa (int ) ;
 int inet_ntop (int ,int *,char*,int) ;
 int ntohs (int ) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static inline void populate_cname(int fd, char *identifier)
{

    char hostname[MAX_CNAME];
    struct sockaddr_storage peer_sockaddr;
    int name_length = 0;
    socklen_t peer_socklen = 0;
    int ret_hostname = gethostname(hostname, MAX_CNAME);
    if (ret_hostname == -1)
        snprintf(hostname, MAX_CNAME, "UnknownHost");
    int ret_sockname = getsockname(fd, (struct sockaddr *)&peer_sockaddr, &peer_socklen);
    if (ret_sockname == 0)
    {
        struct sockaddr *peer = (struct sockaddr *)&peer_sockaddr;
        if (peer->sa_family == AF_INET) {
            struct sockaddr_in *xin = (void*)peer;
            name_length = snprintf(identifier, MAX_CNAME, "%s@%s:%u", hostname,
                            inet_ntoa(xin->sin_addr), ntohs(xin->sin_port));
            if (name_length >= MAX_CNAME)
                identifier[MAX_CNAME-1] = 0;
        } else if (peer->sa_family == AF_INET6) {
            struct sockaddr_in6 *xin6 = (void*)peer;
            char str[INET6_ADDRSTRLEN];
            inet_ntop(xin6->sin6_family, &xin6->sin6_addr, str, sizeof(struct in6_addr));
            name_length = snprintf(identifier, MAX_CNAME, "%s@%s:%u", hostname,
                            str, ntohs(xin6->sin6_port));
            if (name_length >= MAX_CNAME)
                identifier[MAX_CNAME-1] = 0;
        }
    }
    if (name_length == 0)
    {
        name_length = snprintf(identifier, MAX_CNAME, "%s", hostname);
        if (name_length >= MAX_CNAME)
            identifier[MAX_CNAME-1] = 0;
    }
}
