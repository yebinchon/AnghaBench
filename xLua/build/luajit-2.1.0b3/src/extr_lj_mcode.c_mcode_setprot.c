
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mprotect (void*,size_t,int) ;

__attribute__((used)) static int mcode_setprot(void *p, size_t sz, int prot)
{
  return mprotect(p, sz, prot);
}
