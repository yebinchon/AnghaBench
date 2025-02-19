
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_list {int dummy; } ;
struct socket_server {int dummy; } ;
struct socket_message {int dummy; } ;
struct socket_lock {int dummy; } ;
struct socket {scalar_t__ protocol; } ;


 scalar_t__ PROTOCOL_TCP ;
 int send_list_tcp (struct socket_server*,struct socket*,struct wb_list*,struct socket_lock*,struct socket_message*) ;
 int send_list_udp (struct socket_server*,struct socket*,struct wb_list*,struct socket_message*) ;

__attribute__((used)) static int
send_list(struct socket_server *ss, struct socket *s, struct wb_list *list, struct socket_lock *l, struct socket_message *result) {
 if (s->protocol == PROTOCOL_TCP) {
  return send_list_tcp(ss, s, list, l, result);
 } else {
  return send_list_udp(ss, s, list, result);
 }
}
