
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int NVP_NAME (int *) ;
 int NVP_NELEM (int *) ;
 int NVP_TYPE (int *) ;
 int NVP_VALUE (int *) ;
 int nvlist_add_common (int *,int ,int ,int ,int ) ;

int
nvlist_add_nvpair(nvlist_t *nvl, nvpair_t *nvp)
{
 if (nvl == ((void*)0) || nvp == ((void*)0))
  return (EINVAL);

 return (nvlist_add_common(nvl, NVP_NAME(nvp), NVP_TYPE(nvp),
     NVP_NELEM(nvp), NVP_VALUE(nvp)));
}
