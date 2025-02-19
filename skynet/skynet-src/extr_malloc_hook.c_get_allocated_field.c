
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mem_data {int handle; scalar_t__ allocated; } ;
typedef scalar_t__ ssize_t ;


 int ATOM_CAS (scalar_t__*,scalar_t__,int) ;
 int SLOT_SIZE ;
 struct mem_data* mem_stats ;

__attribute__((used)) static ssize_t*
get_allocated_field(uint32_t handle) {
 int h = (int)(handle & (SLOT_SIZE - 1));
 struct mem_data *data = &mem_stats[h];
 uint32_t old_handle = data->handle;
 ssize_t old_alloc = data->allocated;
 if(old_handle == 0 || old_alloc <= 0) {

  if(!ATOM_CAS(&data->handle, old_handle, handle)) {
   return 0;
  }
  if (old_alloc < 0) {
   ATOM_CAS(&data->allocated, old_alloc, 0);
  }
 }
 if(data->handle != handle) {
  return 0;
 }
 return &data->allocated;
}
