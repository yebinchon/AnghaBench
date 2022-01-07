
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;


 struct skynet_context* REMOTE ;
 int skynet_context_release (struct skynet_context*) ;

void
skynet_harbor_exit() {
 struct skynet_context * ctx = REMOTE;
 REMOTE= ((void*)0);
 if (ctx) {
  skynet_context_release(ctx);
 }
}
