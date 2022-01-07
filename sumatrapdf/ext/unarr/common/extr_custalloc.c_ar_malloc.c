
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* malloc ) (int ,size_t) ;int opaque; } ;


 TYPE_1__ gAllocator ;
 void* stub1 (int ,size_t) ;

void *ar_malloc(size_t size)
{
    return gAllocator.malloc(gAllocator.opaque, size);
}
