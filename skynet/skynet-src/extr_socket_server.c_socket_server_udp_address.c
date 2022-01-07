
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct socket_udp_address {int dummy; } ;
struct socket_server {int dummy; } ;
struct socket_message {scalar_t__ ud; scalar_t__ data; } ;





const struct socket_udp_address *
socket_server_udp_address(struct socket_server *ss, struct socket_message *msg, int *addrsz) {
 uint8_t * address = (uint8_t *)(msg->data + msg->ud);
 int type = address[0];
 switch(type) {
 case 129:
  *addrsz = 1+2+4;
  break;
 case 128:
  *addrsz = 1+2+16;
  break;
 default:
  return ((void*)0);
 }
 return (const struct socket_udp_address *)address;
}
