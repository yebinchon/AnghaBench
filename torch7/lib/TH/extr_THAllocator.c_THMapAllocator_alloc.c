
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 int THError (char*) ;

__attribute__((used)) static void *THMapAllocator_alloc(void* ctx_, ptrdiff_t size) {
  THError("file mapping not supported on your system");
  return ((void*)0);
}
