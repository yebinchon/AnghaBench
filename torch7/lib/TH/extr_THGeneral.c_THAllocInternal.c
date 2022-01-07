
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 int THHeapUpdate (int ) ;
 int getAllocSize (void*) ;
 void* malloc (int) ;
 scalar_t__ posix_memalign (void**,int,int) ;

__attribute__((used)) static void* THAllocInternal(ptrdiff_t size)
{
  void *ptr;

  if (size > 5120)
  {

    if (posix_memalign(&ptr, 64, size) != 0)
      ptr = ((void*)0);







  }
  else
  {
    ptr = malloc(size);
  }

  THHeapUpdate(getAllocSize(ptr));
  return ptr;
}
