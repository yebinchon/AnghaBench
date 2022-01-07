
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ socket_t ;


 scalar_t__ INVALID_SOCKET ;
 int IPV4_LOCALHOST ;
 int net_close (scalar_t__) ;
 scalar_t__ net_connect (int ,int ) ;
 int net_recv (scalar_t__,char*,int) ;

__attribute__((used)) static socket_t
connect_and_read_byte(uint16_t port) {
    socket_t socket = net_connect(IPV4_LOCALHOST, port);
    if (socket == INVALID_SOCKET) {
        return INVALID_SOCKET;
    }

    char byte;


    if (net_recv(socket, &byte, 1) != 1) {

        net_close(socket);
        return INVALID_SOCKET;
    }
    return socket;
}
