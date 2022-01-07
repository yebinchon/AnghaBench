
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (void*,void*,size_t) ;

__attribute__((used)) static int
abd_cmp_cb(void *bufa, void *bufb, size_t size, void *private)
{
 return (memcmp(bufa, bufb, size));
}
