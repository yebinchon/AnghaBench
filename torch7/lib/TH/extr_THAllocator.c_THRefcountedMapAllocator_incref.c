
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THMapAllocatorContext ;


 int THError (char*) ;

void THRefcountedMapAllocator_incref(THMapAllocatorContext *ctx, void *data)
{
  THError("refcounted file mapping not supported on your system");
}
