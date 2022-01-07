
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;

__attribute__((used)) static void *
fz_malloc_default(void *opaque, size_t size)
{
 return malloc(size);
}
