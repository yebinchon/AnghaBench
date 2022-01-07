
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mem_size_t ;


 void* ExAllocatePoolWithTag (int ,int ,int ) ;
 int LWIP_TAG ;
 int NonPagedPool ;

void *
malloc(mem_size_t size)
{
    return ExAllocatePoolWithTag(NonPagedPool, size, LWIP_TAG);
}
