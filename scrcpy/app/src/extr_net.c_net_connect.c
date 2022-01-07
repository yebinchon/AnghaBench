
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
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
typedef TYPE_2__ SOCKADDR_IN ;
typedef int SOCKADDR ;


 int AF_INET ;
 scalar_t__ INVALID_SOCKET ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_STREAM ;
 scalar_t__ connect (scalar_t__,int *,int) ;
 int htonl (int ) ;
 int htons (int ) ;
 int net_close (scalar_t__) ;
 int perror (char*) ;
 scalar_t__ socket (int ,int ,int ) ;

socket_t
net_connect(uint32_t addr, uint16_t port) {
    socket_t sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock == INVALID_SOCKET) {
        perror("socket");
        return INVALID_SOCKET;
    }

    SOCKADDR_IN sin;
    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = htonl(addr);
    sin.sin_port = htons(port);

    if (connect(sock, (SOCKADDR *) &sin, sizeof(sin)) == SOCKET_ERROR) {
        perror("connect");
        net_close(sock);
        return INVALID_SOCKET;
    }

    return sock;
}
