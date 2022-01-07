
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_data {scalar_t__ handle; size_t allocated; } ;


 int SLOT_SIZE ;
 struct mem_data* mem_stats ;
 int skynet_error (int *,char*,...) ;

void
dump_c_mem() {
 int i;
 size_t total = 0;
 skynet_error(((void*)0), "dump all service mem:");
 for(i=0; i<SLOT_SIZE; i++) {
  struct mem_data* data = &mem_stats[i];
  if(data->handle != 0 && data->allocated != 0) {
   total += data->allocated;
   skynet_error(((void*)0), ":%08x -> %zdkb %db", data->handle, data->allocated >> 10, (int)(data->allocated % 1024));
  }
 }
 skynet_error(((void*)0), "+total: %zdkb",total >> 10);
}
