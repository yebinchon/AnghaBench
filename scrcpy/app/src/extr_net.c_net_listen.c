
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ socket_t ;
typedef int sin ;
typedef int reuse ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
typedef TYPE_2__ SOCKADDR_IN ;
typedef int SOCKADDR ;


 int AF_INET ;
 scalar_t__ INVALID_SOCKET ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (scalar_t__,int *,int) ;
 int htonl (int ) ;
 int htons (int ) ;
 scalar_t__ listen (scalar_t__,int) ;
 int net_close (scalar_t__) ;
 int perror (char*) ;
 int setsockopt (scalar_t__,int ,int ,void const*,int) ;
 scalar_t__ socket (int ,int ,int ) ;

socket_t
net_listen(uint32_t addr, uint16_t port, int backlog) {
    socket_t sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock == INVALID_SOCKET) {
        perror("socket");
        return INVALID_SOCKET;
    }

    int reuse = 1;
    if (setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, (const void *) &reuse,
                   sizeof(reuse)) == -1) {
        perror("setsockopt(SO_REUSEADDR)");
    }

    SOCKADDR_IN sin;
    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = htonl(addr);
    sin.sin_port = htons(port);

    if (bind(sock, (SOCKADDR *) &sin, sizeof(sin)) == SOCKET_ERROR) {
        perror("bind");
        net_close(sock);
        return INVALID_SOCKET;
    }

    if (listen(sock, backlog) == SOCKET_ERROR) {
        perror("listen");
        net_close(sock);
        return INVALID_SOCKET;
    }

    return sock;
}
