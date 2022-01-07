
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALLOC_TAG_ZLIB ;
 void* ExAllocatePoolWithTag (int ,unsigned int,int ) ;
 int PagedPool ;
 int UNUSED (void*) ;

__attribute__((used)) static void* zlib_alloc(void* opaque, unsigned int items, unsigned int size) {
    UNUSED(opaque);

    return ExAllocatePoolWithTag(PagedPool, items * size, ALLOC_TAG_ZLIB);
}
