
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ExFreePool (void*) ;
 int UNUSED (void*) ;

__attribute__((used)) static void zstd_free(void* opaque, void* address) {
    UNUSED(opaque);

    ExFreePool(address);
}
