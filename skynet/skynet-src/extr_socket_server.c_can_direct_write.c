
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int id; scalar_t__ type; scalar_t__ udpconnecting; } ;


 scalar_t__ SOCKET_TYPE_CONNECTED ;
 scalar_t__ nomore_sending_data (struct socket*) ;

__attribute__((used)) static inline int
can_direct_write(struct socket *s, int id) {
 return s->id == id && nomore_sending_data(s) && s->type == SOCKET_TYPE_CONNECTED && s->udpconnecting == 0;
}
