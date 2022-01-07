
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JEMALLOC_FREE_JUNK ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static void
large_dalloc_junk_impl(void *ptr, size_t size) {
 memset(ptr, JEMALLOC_FREE_JUNK, size);
}
