
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct remote_message_header {int destination; int source; scalar_t__ session; } ;
struct harbor {int ctx; scalar_t__ id; } ;


 int HANDLE_MASK ;
 int HANDLE_REMOTE_SHIFT ;
 int HEADER_COOKIE_LENGTH ;
 int PTYPE_ERROR ;
 int PTYPE_TAG_DONTCOPY ;
 int message_to_header (int const*,struct remote_message_header*) ;
 int skynet_error (int ,char*,int,int,int) ;
 int skynet_send (int ,int,int,int,int,void*,int) ;

__attribute__((used)) static void
forward_local_messsage(struct harbor *h, void *msg, int sz) {
 const char * cookie = msg;
 cookie += sz - HEADER_COOKIE_LENGTH;
 struct remote_message_header header;
 message_to_header((const uint32_t *)cookie, &header);

 uint32_t destination = header.destination;
 int type = destination >> HANDLE_REMOTE_SHIFT;
 destination = (destination & HANDLE_MASK) | ((uint32_t)h->id << HANDLE_REMOTE_SHIFT);

 if (skynet_send(h->ctx, header.source, destination, type | PTYPE_TAG_DONTCOPY , (int)header.session, (void *)msg, sz-HEADER_COOKIE_LENGTH) < 0) {
  if (type != PTYPE_ERROR) {

   skynet_send(h->ctx, destination, header.source , PTYPE_ERROR, (int)header.session, ((void*)0), 0);
  }
  skynet_error(h->ctx, "Unknown destination :%x from :%x type(%d)", destination, header.source, type);
 }
}
