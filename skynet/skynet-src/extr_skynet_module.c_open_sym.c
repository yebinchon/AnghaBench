
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_module {int * init; void* signal; void* release; void* create; } ;


 void* get_api (struct skynet_module*,char*) ;

__attribute__((used)) static int
open_sym(struct skynet_module *mod) {
 mod->create = get_api(mod, "_create");
 mod->init = get_api(mod, "_init");
 mod->release = get_api(mod, "_release");
 mod->signal = get_api(mod, "_signal");

 return mod->init == ((void*)0);
}
