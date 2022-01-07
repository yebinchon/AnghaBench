
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ExAllocatePoolWithTag (int ,size_t,int ) ;
 int PagedPool ;
 int UNUSED (void*) ;
 int ZSTD_ALLOC_TAG ;

__attribute__((used)) static void* zstd_malloc(void* opaque, size_t size) {
    UNUSED(opaque);

    return ExAllocatePoolWithTag(PagedPool, size, ZSTD_ALLOC_TAG);
}
