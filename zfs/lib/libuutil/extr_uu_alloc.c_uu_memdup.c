
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,size_t) ;
 void* uu_zalloc (size_t) ;

void *
uu_memdup(const void *buf, size_t sz)
{
 void *p;

 p = uu_zalloc(sz);
 if (p == ((void*)0))
  return (((void*)0));
 (void) memcpy(p, buf, sz);
 return (p);
}
