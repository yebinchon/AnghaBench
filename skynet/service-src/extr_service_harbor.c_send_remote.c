
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct socket_sendbuffer {int id; size_t sz; int * buffer; int type; } ;
struct skynet_context {int dummy; } ;
struct remote_message_header {int destination; int source; } ;


 int SOCKET_BUFFER_RAWPOINTER ;
 size_t UINT32_MAX ;
 int header_to_message (struct remote_message_header*,int *) ;
 int memcpy (int *,char const*,size_t) ;
 int skynet_error (struct skynet_context*,char*,int ,int ) ;
 int skynet_socket_sendbuffer (struct skynet_context*,struct socket_sendbuffer*) ;
 int to_bigendian (int *,int ) ;

__attribute__((used)) static void
send_remote(struct skynet_context * ctx, int fd, const char * buffer, size_t sz, struct remote_message_header * cookie) {
 size_t sz_header = sz+sizeof(*cookie);
 if (sz_header > UINT32_MAX) {
  skynet_error(ctx, "remote message from :%08x to :%08x is too large.", cookie->source, cookie->destination);
  return;
 }
 uint8_t sendbuf[sz_header+4];
 to_bigendian(sendbuf, (uint32_t)sz_header);
 memcpy(sendbuf+4, buffer, sz);
 header_to_message(cookie, sendbuf+4+sz);

 struct socket_sendbuffer tmp;
 tmp.id = fd;
 tmp.type = SOCKET_BUFFER_RAWPOINTER;
 tmp.buffer = sendbuf;
 tmp.sz = sz_header+4;


 skynet_socket_sendbuffer(ctx, &tmp);
}
