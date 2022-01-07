
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 void* THAlloc (int) ;
 int THError (char*,...) ;
 int THFree (void*) ;
 int THHeapUpdate (int) ;
 int getAllocSize (void*) ;
 void* realloc (void*,int) ;
 int torchGCData ;
 int torchGCFunction (int ) ;

void* THRealloc(void *ptr, ptrdiff_t size)
{
  if(!ptr)
    return(THAlloc(size));

  if(size == 0)
  {
    THFree(ptr);
    return ((void*)0);
  }

  if(size < 0)
    THError("$ Torch: invalid memory size -- maybe an overflow?");

  ptrdiff_t oldSize = -getAllocSize(ptr);
  void *newptr = realloc(ptr, size);

  if(!newptr && torchGCFunction) {
    torchGCFunction(torchGCData);
    newptr = realloc(ptr, size);
  }

  if(!newptr)
    THError("$ Torch: not enough memory: you tried to reallocate %dGB. Buy new RAM!", size/1073741824);


  THHeapUpdate(oldSize + getAllocSize(newptr));

  return newptr;
}
