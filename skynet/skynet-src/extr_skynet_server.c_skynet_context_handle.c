
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int handle; } ;



uint32_t
skynet_context_handle(struct skynet_context *ctx) {
 return ctx->handle;
}
