
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_module {int (* release ) (void*) ;} ;


 int stub1 (void*) ;

void
skynet_module_instance_release(struct skynet_module *m, void *inst) {
 if (m->release) {
  m->release(inst);
 }
}
