
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int socklen_t ;
typedef int evutil_socket_t ;


 int AF_UNSPEC ;
 int SOCK_DGRAM ;
 int ccnet_warning (char*,char const*,char const*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 struct sockaddr* malloc (int ) ;
 int memcpy (struct sockaddr*,int ,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int socket (int ,int ,int ) ;

evutil_socket_t
udp_client (const char *host, const char *serv,
            struct sockaddr **saptr, socklen_t *lenp)
{
 evutil_socket_t sockfd;
    int n;
 struct addrinfo hints, *res, *ressave;

 memset (&hints, 0, sizeof(struct addrinfo));
 hints.ai_family = AF_UNSPEC;
 hints.ai_socktype = SOCK_DGRAM;

 if ((n = getaddrinfo(host, serv, &hints, &res)) != 0) {
        ccnet_warning ("udp_client error for %s, %s: %s",
                       host, serv, gai_strerror(n));
        return -1;
    }
 ressave = res;

 do {
  sockfd = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
  if (sockfd >= 0)
   break;
 } while ( (res = res->ai_next) != ((void*)0));

 if (res == ((void*)0)) {
  ccnet_warning ("udp_client error for %s, %s", host, serv);
        freeaddrinfo (ressave);
        return -1;
    }

 *saptr = malloc(res->ai_addrlen);
 memcpy(*saptr, res->ai_addr, res->ai_addrlen);
 *lenp = res->ai_addrlen;

 freeaddrinfo(ressave);

 return (sockfd);
}
