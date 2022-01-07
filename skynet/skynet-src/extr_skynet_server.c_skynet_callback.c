
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {void* cb_ud; int cb; } ;
typedef int skynet_cb ;



void
skynet_callback(struct skynet_context * context, void *ud, skynet_cb cb) {
 context->cb = cb;
 context->cb_ud = ud;
}
