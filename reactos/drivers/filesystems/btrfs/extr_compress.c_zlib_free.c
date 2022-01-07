
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ExFreePool (void*) ;
 int UNUSED (void*) ;

__attribute__((used)) static void zlib_free(void* opaque, void* ptr) {
    UNUSED(opaque);

    ExFreePool(ptr);
}
