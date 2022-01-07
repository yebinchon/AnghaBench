
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_message {int data; int ud; scalar_t__ opaque; int id; } ;
struct skynet_socket_message {scalar_t__ type; int buffer; int ud; int id; } ;


 scalar_t__ SKYNET_SOCKET_TYPE_UDP ;
 int SOCKET_SERVER ;
 scalar_t__ socket_server_udp_address (int ,struct socket_message*,int*) ;

const char *
skynet_socket_udp_address(struct skynet_socket_message *msg, int *addrsz) {
 if (msg->type != SKYNET_SOCKET_TYPE_UDP) {
  return ((void*)0);
 }
 struct socket_message sm;
 sm.id = msg->id;
 sm.opaque = 0;
 sm.ud = msg->ud;
 sm.data = msg->buffer;
 return (const char *)socket_server_udp_address(SOCKET_SERVER, &sm, addrsz);
}
