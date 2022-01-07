
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_range_recorder_t ;
typedef int vm_address_t ;
typedef int task_t ;
typedef int memory_reader_t ;
typedef int kern_return_t ;


 int KERN_SUCCESS ;

__attribute__((used)) static kern_return_t
zone_enumerator(task_t task, void *data, unsigned type_mask,
    vm_address_t zone_address, memory_reader_t reader,
    vm_range_recorder_t recorder) {
 return KERN_SUCCESS;
}
