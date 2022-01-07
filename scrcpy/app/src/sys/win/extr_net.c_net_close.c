
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socket_t ;


 int closesocket (int ) ;

bool
net_close(socket_t socket) {
    return !closesocket(socket);
}
