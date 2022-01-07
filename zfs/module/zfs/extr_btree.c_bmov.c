
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (void*,void const*,size_t) ;

__attribute__((used)) static void
bmov(const void *src, void *dest, size_t size)
{
 (void) memmove(dest, src, size);
}
