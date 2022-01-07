
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;


 int _cb (struct skynet_context*,void*,int,int,int ,void const*,size_t) ;

__attribute__((used)) static int
forward_cb(struct skynet_context * context, void * ud, int type, int session, uint32_t source, const void * msg, size_t sz) {
 _cb(context, ud, type, session, source, msg, sz);

 return 1;
}
