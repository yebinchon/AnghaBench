
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snlua {int dummy; } ;
struct skynet_context {int dummy; } ;


 int assert (int) ;
 int init_cb (struct snlua*,struct skynet_context*,void const*,size_t) ;
 int skynet_callback (struct skynet_context*,int *,int *) ;
 int skynet_command (struct skynet_context*,char*,int *) ;

__attribute__((used)) static int
launch_cb(struct skynet_context * context, void *ud, int type, int session, uint32_t source , const void * msg, size_t sz) {
 assert(type == 0 && session == 0);
 struct snlua *l = ud;
 skynet_callback(context, ((void*)0), ((void*)0));
 int err = init_cb(l, context, msg, sz);
 if (err) {
  skynet_command(context, "EXIT", ((void*)0));
 }

 return 0;
}
