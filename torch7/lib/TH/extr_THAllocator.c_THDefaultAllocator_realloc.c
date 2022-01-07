
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 void* THRealloc (void*,int ) ;

__attribute__((used)) static void *THDefaultAllocator_realloc(void* ctx, void* ptr, ptrdiff_t size) {
  return THRealloc(ptr, size);
}
