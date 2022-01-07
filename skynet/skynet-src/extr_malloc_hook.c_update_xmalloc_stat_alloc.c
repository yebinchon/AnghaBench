
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ssize_t ;


 int ATOM_ADD (int *,size_t) ;
 int ATOM_INC (int *) ;
 int _memory_block ;
 int _used_memory ;
 int * get_allocated_field (int ) ;

__attribute__((used)) inline static void
update_xmalloc_stat_alloc(uint32_t handle, size_t __n) {
 ATOM_ADD(&_used_memory, __n);
 ATOM_INC(&_memory_block);
 ssize_t* allocated = get_allocated_field(handle);
 if(allocated) {
  ATOM_ADD(allocated, __n);
 }
}
