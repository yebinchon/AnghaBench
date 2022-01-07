
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int nvlist_nv_alloc (int) ;
 int nvlist_xdup (int *,int **,int ) ;

int
nvlist_dup(nvlist_t *nvl, nvlist_t **nvlp, int kmflag)
{
 return (nvlist_xdup(nvl, nvlp, nvlist_nv_alloc(kmflag)));
}
