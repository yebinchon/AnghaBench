
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THFree (void*) ;

__attribute__((used)) static void THDefaultAllocator_free(void* ctx, void* ptr) {
  THFree(ptr);
}
