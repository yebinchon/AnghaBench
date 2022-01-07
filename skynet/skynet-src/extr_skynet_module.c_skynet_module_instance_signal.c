
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_module {int (* signal ) (void*,int) ;} ;


 int stub1 (void*,int) ;

void
skynet_module_instance_signal(struct skynet_module *m, void *inst, int signal) {
 if (m->signal) {
  m->signal(inst, signal);
 }
}
