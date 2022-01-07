
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* memcpy (void*,void const*,size_t) ;

__attribute__((used)) static void* XXH_memcpy(void* dest, const void* src, size_t size) { return memcpy(dest,src,size); }
