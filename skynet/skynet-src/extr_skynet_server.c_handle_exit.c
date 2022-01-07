
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct skynet_context {scalar_t__ handle; } ;
struct TYPE_2__ {scalar_t__ monitor_exit; } ;


 TYPE_1__ G_NODE ;
 int PTYPE_CLIENT ;
 int skynet_error (struct skynet_context*,char*,...) ;
 int skynet_handle_retire (scalar_t__) ;
 int skynet_send (struct skynet_context*,scalar_t__,scalar_t__,int ,int ,int *,int ) ;

__attribute__((used)) static void
handle_exit(struct skynet_context * context, uint32_t handle) {
 if (handle == 0) {
  handle = context->handle;
  skynet_error(context, "KILL self");
 } else {
  skynet_error(context, "KILL :%0x", handle);
 }
 if (G_NODE.monitor_exit) {
  skynet_send(context, handle, G_NODE.monitor_exit, PTYPE_CLIENT, 0, ((void*)0), 0);
 }
 skynet_handle_retire(handle);
}
