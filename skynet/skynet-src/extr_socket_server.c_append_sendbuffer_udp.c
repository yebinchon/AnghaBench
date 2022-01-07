
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct write_buffer {scalar_t__ sz; int udp_address; } ;
struct wb_list {int dummy; } ;
struct socket_server {int dummy; } ;
struct socket {int wb_size; struct wb_list low; struct wb_list high; } ;
struct request_send {int dummy; } ;


 int PRIORITY_HIGH ;
 int SIZEOF_UDPBUFFER ;
 int UDP_ADDRESS_SIZE ;
 struct write_buffer* append_sendbuffer_ (struct socket_server*,struct wb_list*,struct request_send*,int ) ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static inline void
append_sendbuffer_udp(struct socket_server *ss, struct socket *s, int priority, struct request_send * request, const uint8_t udp_address[UDP_ADDRESS_SIZE]) {
 struct wb_list *wl = (priority == PRIORITY_HIGH) ? &s->high : &s->low;
 struct write_buffer *buf = append_sendbuffer_(ss, wl, request, SIZEOF_UDPBUFFER);
 memcpy(buf->udp_address, udp_address, UDP_ADDRESS_SIZE);
 s->wb_size += buf->sz;
}
