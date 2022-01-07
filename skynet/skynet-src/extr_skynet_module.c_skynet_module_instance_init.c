
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_module {int (* init ) (void*,struct skynet_context*,char const*) ;} ;
struct skynet_context {int dummy; } ;


 int stub1 (void*,struct skynet_context*,char const*) ;

int
skynet_module_instance_init(struct skynet_module *m, void * inst, struct skynet_context *ctx, const char * parm) {
 return m->init(inst, ctx, parm);
}
