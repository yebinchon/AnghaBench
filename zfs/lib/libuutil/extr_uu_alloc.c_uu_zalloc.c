
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UU_ERROR_SYSTEM ;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;
 int uu_set_error (int ) ;

void *
uu_zalloc(size_t n)
{
 void *p = malloc(n);

 if (p == ((void*)0)) {
  uu_set_error(UU_ERROR_SYSTEM);
  return (((void*)0));
 }

 (void) memset(p, 0, n);

 return (p);
}
