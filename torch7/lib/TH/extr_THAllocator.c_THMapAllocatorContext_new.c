
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THMapAllocatorContext ;


 int THError (char*) ;

THMapAllocatorContext *THMapAllocatorContext_new(const char *filename, int flags) {
  THError("file mapping not supported on your system");
  return ((void*)0);
}
