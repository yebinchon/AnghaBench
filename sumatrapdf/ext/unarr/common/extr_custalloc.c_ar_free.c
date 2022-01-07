
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opaque; int (* free ) (int ,void*) ;} ;


 TYPE_1__ gAllocator ;
 int stub1 (int ,void*) ;

void ar_free(void *ptr)
{
    gAllocator.free(gAllocator.opaque, ptr);
}
