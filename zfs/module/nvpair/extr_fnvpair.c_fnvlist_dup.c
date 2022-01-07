
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int KM_SLEEP ;
 int VERIFY0 (int ) ;
 int nvlist_dup (int *,int **,int ) ;

nvlist_t *
fnvlist_dup(nvlist_t *nvl)
{
 nvlist_t *rv;
 VERIFY0(nvlist_dup(nvl, &rv, KM_SLEEP));
 return (rv);
}
