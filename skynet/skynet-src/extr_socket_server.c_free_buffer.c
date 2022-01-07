
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* free ) (void*) ;} ;
struct socket_server {TYPE_1__ soi; } ;
struct socket_sendbuffer {int type; scalar_t__ buffer; } ;


 int FREE (void*) ;



 int stub1 (void*) ;

__attribute__((used)) static void
free_buffer(struct socket_server *ss, struct socket_sendbuffer *buf) {
 void *buffer = (void *)buf->buffer;
 switch (buf->type) {
 case 130:
  FREE((void *)buffer);
  break;
 case 129:
  ss->soi.free(buffer);
  break;
 case 128:
  break;
 }
}
