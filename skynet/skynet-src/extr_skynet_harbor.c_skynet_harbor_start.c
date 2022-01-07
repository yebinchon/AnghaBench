
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* REMOTE ;
 int skynet_context_reserve (void*) ;

void
skynet_harbor_start(void *ctx) {


 skynet_context_reserve(ctx);
 REMOTE = ctx;
}
