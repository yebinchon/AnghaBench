
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THError (char*) ;

__attribute__((used)) static void THMapAllocator_free(void* ctx, void* data) {
  THError("file mapping not supported on your system");
}
