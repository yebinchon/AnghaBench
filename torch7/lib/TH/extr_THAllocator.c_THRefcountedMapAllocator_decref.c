
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THMapAllocatorContext ;


 int THError (char*) ;

int THRefcountedMapAllocator_decref(THMapAllocatorContext *ctx, void *data)
{
  THError("refcounted file mapping not supported on your system");
  return 0;
}
