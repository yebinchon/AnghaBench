
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;


 int AddMem (void*,size_t) ;
 int CheckSizeArgumentsOverflow (size_t,size_t) ;
 int Increment (int *) ;
 int assert (int) ;
 void* malloc (size_t) ;
 int num_malloc_calls ;

void* WebPSafeMalloc(uint64_t nmemb, size_t size) {
  void* ptr;
  Increment(&num_malloc_calls);
  if (!CheckSizeArgumentsOverflow(nmemb, size)) return ((void*)0);
  assert(nmemb * size > 0);
  ptr = malloc((size_t)(nmemb * size));
  AddMem(ptr, (size_t)(nmemb * size));
  return ptr;
}
