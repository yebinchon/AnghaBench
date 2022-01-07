
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nv_alloc_t ;


 int KM_PUSHPAGE ;
 void* vmem_alloc (size_t,int ) ;

__attribute__((used)) static void *
nv_alloc_pushpage_spl(nv_alloc_t *nva, size_t size)
{
 return (vmem_alloc(size, KM_PUSHPAGE));
}
