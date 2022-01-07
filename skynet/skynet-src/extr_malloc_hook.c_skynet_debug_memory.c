
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fprintf (int ,char*,int,char const*,void*) ;
 size_t malloc_current_memory () ;
 int skynet_current_handle () ;
 int stderr ;

void
skynet_debug_memory(const char *info) {

 uint32_t handle = skynet_current_handle();
 size_t mem = malloc_current_memory();
 fprintf(stderr, "[:%08x] %s %p\n", handle, info, (void *)mem);
}
