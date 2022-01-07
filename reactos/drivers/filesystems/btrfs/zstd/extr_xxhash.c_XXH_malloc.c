
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ExAllocatePoolWithTag (int ,size_t,int ) ;
 int PagedPool ;
 int XXH_ALLOC_TAG ;

__attribute__((used)) static void* XXH_malloc(size_t s) {
    return ExAllocatePoolWithTag(PagedPool, s, XXH_ALLOC_TAG);
}
