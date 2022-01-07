
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;


 int HANDLE_REMOTE_SHIFT ;
 int skynet_harbor_message_isremote (int) ;

int
skynet_isremote(struct skynet_context * ctx, uint32_t handle, int * harbor) {
 int ret = skynet_harbor_message_isremote(handle);
 if (harbor) {
  *harbor = (int)(handle >> HANDLE_REMOTE_SHIFT);
 }
 return ret;
}
