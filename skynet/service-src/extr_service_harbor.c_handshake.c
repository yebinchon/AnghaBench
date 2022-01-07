
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct socket_sendbuffer {int sz; int * buffer; int type; int id; } ;
struct slave {int fd; } ;
struct harbor {int ctx; int id; struct slave* s; } ;


 int SOCKET_BUFFER_RAWPOINTER ;
 int skynet_socket_sendbuffer (int ,struct socket_sendbuffer*) ;

__attribute__((used)) static void
handshake(struct harbor *h, int id) {
 struct slave *s = &h->s[id];
 uint8_t handshake[1] = { (uint8_t)h->id };
 struct socket_sendbuffer tmp;
 tmp.id = s->fd;
 tmp.type = SOCKET_BUFFER_RAWPOINTER;
 tmp.buffer = handshake;
 tmp.sz = 1;
 skynet_socket_sendbuffer(h->ctx, &tmp);
}
