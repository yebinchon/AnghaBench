
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nv_alloc_t ;




 int * nv_alloc_nosleep ;
 int * nv_alloc_pushpage ;
 int * nv_alloc_sleep ;

__attribute__((used)) static nv_alloc_t *
nvlist_nv_alloc(int kmflag)
{
 return (nv_alloc_nosleep);

}
