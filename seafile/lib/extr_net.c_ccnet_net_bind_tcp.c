
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int ai_addrlen; int sin_port; TYPE_1__ sin_addr; void* sin_family; struct sockaddr* ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct sockaddr_in* ai_next; int ai_flags; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {int ai_addrlen; int sin_port; TYPE_1__ sin_addr; void* sin_family; struct sockaddr* ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; int ai_flags; } ;
typedef int sock ;
typedef int optval ;
typedef int on ;
typedef int evutil_socket_t ;
typedef int buf ;


 void* AF_INET ;
 int AF_UNSPEC ;
 int AI_PASSIVE ;
 int INADDR_ANY ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int ccnet_warning (char*,...) ;
 int close (int) ;
 int createSocket (int const,int) ;
 int errno ;
 int evutil_closesocket (int) ;
 int freeaddrinfo (struct sockaddr_in*) ;
 int gai_strerror (int) ;
 int getaddrinfo (int *,char*,struct sockaddr_in*,struct sockaddr_in**) ;
 int htons (int) ;
 int makeSocketNonBlocking (int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ setsockopt (int,int ,int ,...) ;
 int snprintf (char*,int,char*,int) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;

evutil_socket_t
ccnet_net_bind_tcp (int port, int nonblock)
{

    int sockfd, n;
    struct addrinfo hints, *res, *ressave;
    char buf[10];

    memset (&hints, 0,sizeof (struct addrinfo));
    hints.ai_flags = AI_PASSIVE;
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;

    snprintf (buf, sizeof(buf), "%d", port);

    if ( (n = getaddrinfo(((void*)0), buf, &hints, &res) ) != 0) {
        ccnet_warning ("getaddrinfo fails: %s\n", gai_strerror(n));
        return -1;
    }

    ressave = res;

    do {
        int on = 1;

        sockfd = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
        if (sockfd < 0)
            continue;

  if (setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) < 0) {
   ccnet_warning ("setsockopt of SO_REUSEADDR error\n");
            continue;
        }

        if (nonblock)
            sockfd = makeSocketNonBlocking (sockfd);
        if (sockfd < 0)
            continue;

        if (bind(sockfd, res->ai_addr, res->ai_addrlen) == 0)
            break;

        close(sockfd);
    } while ( (res = res->ai_next) != ((void*)0));

    freeaddrinfo (ressave);

    if (res == ((void*)0)) {
        ccnet_warning ("bind fails: %s\n", strerror(errno));
        return -1;
    }

    return sockfd;
}
