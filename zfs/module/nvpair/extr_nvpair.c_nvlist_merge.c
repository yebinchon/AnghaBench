
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int nvlist_copy_pairs (int *,int *) ;

int
nvlist_merge(nvlist_t *dst, nvlist_t *nvl, int flag)
{
 if (nvl == ((void*)0) || dst == ((void*)0))
  return (EINVAL);

 if (dst != nvl)
  return (nvlist_copy_pairs(nvl, dst));

 return (0);
}
