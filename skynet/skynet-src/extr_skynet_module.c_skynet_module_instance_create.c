
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_module {void* (* create ) () ;} ;


 void* stub1 () ;

void *
skynet_module_instance_create(struct skynet_module *m) {
 if (m->create) {
  return m->create();
 } else {
  return (void *)(intptr_t)(~0);
 }
}
