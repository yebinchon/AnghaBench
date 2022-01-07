
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOLEAN ;


 int ASSERT (void*) ;
 void* ExAllocatePool (int ,size_t) ;
 int NonPagedPool ;
 int PagedPool ;

void * PICE_malloc( size_t numBytes, BOOLEAN fromPaged )
{
 void* res = ExAllocatePool( (fromPaged)?PagedPool:NonPagedPool, numBytes );
 ASSERT(res);
 return res;
}
