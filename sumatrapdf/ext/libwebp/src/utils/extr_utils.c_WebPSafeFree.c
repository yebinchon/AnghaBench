
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Increment (int *) ;
 int SubMem (void* const) ;
 int free (void* const) ;
 int num_free_calls ;

void WebPSafeFree(void* const ptr) {
  if (ptr != ((void*)0)) {
    Increment(&num_free_calls);
    SubMem(ptr);
  }
  free(ptr);
}
