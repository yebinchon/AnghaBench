
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct skynet_socket_message {int dummy; } ;
struct skynet_context {int dummy; } ;
struct gate {int hash; } ;





 int _ctrl (struct gate*,void const*,int) ;
 int dispatch_socket_message (struct gate*,void const*,int) ;
 int hashid_lookup (int *,int) ;
 int skynet_error (struct skynet_context*,char*,int,...) ;
 int skynet_socket_send (struct skynet_context*,int,void*,size_t) ;

__attribute__((used)) static int
_cb(struct skynet_context * ctx, void * ud, int type, int session, uint32_t source, const void * msg, size_t sz) {
 struct gate *g = ud;
 switch(type) {
 case 128:
  _ctrl(g , msg , (int)sz);
  break;
 case 130: {
  if (sz <=4 ) {
   skynet_error(ctx, "Invalid client message from %x",source);
   break;
  }

  const uint8_t * idbuf = msg + sz - 4;
  uint32_t uid = idbuf[0] | idbuf[1] << 8 | idbuf[2] << 16 | idbuf[3] << 24;
  int id = hashid_lookup(&g->hash, uid);
  if (id>=0) {

   skynet_socket_send(ctx, uid, (void*)msg, sz-4);

   return 1;
  } else {
   skynet_error(ctx, "Invalid client id %d from %x",(int)uid,source);
   break;
  }
 }
 case 129:

  dispatch_socket_message(g, msg, (int)(sz-sizeof(struct skynet_socket_message)));
  break;
 }
 return 0;
}
