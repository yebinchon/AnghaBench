
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int socket_t ;


 int IPV4_LOCALHOST ;
 int net_listen (int ,int ,int) ;

__attribute__((used)) static socket_t
listen_on_port(uint16_t port) {
    return net_listen(IPV4_LOCALHOST, port, 1);
}
