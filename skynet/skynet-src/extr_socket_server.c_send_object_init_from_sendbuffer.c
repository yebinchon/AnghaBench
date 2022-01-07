
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_server {int dummy; } ;
struct socket_sendbuffer {int type; int sz; scalar_t__ buffer; } ;
struct send_object {int * free_func; int sz; int * buffer; } ;





 int USEROBJECT ;
 int * dummy_free ;
 int send_object_init (struct socket_server*,struct send_object*,void*,int ) ;

__attribute__((used)) static inline void
send_object_init_from_sendbuffer(struct socket_server *ss, struct send_object *so, struct socket_sendbuffer *buf) {
 switch (buf->type) {
 case 130:
  send_object_init(ss, so, (void *)buf->buffer, buf->sz);
  break;
 case 129:
  send_object_init(ss, so, (void *)buf->buffer, USEROBJECT);
  break;
 case 128:
  so->buffer = (void *)buf->buffer;
  so->sz = buf->sz;
  so->free_func = dummy_free;
  break;
 default:

  so->buffer = ((void*)0);
  so->sz = 0;
  so->free_func = ((void*)0);
  break;
 }
}
