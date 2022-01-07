
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int dummy; } ;


 int SOCKET_SERVER ;
 struct socket_info* socket_server_info (int ) ;

struct socket_info *
skynet_socket_info() {
 return socket_server_info(SOCKET_SERVER);
}
