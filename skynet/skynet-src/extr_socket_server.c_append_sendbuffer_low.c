
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_buffer {scalar_t__ sz; } ;
struct socket_server {int dummy; } ;
struct socket {int wb_size; int low; } ;
struct request_send {int dummy; } ;


 int SIZEOF_TCPBUFFER ;
 struct write_buffer* append_sendbuffer_ (struct socket_server*,int *,struct request_send*,int ) ;

__attribute__((used)) static inline void
append_sendbuffer_low(struct socket_server *ss,struct socket *s, struct request_send * request) {
 struct write_buffer *buf = append_sendbuffer_(ss, &s->low, request, SIZEOF_TCPBUFFER);
 s->wb_size += buf->sz;
}
