
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int fmd_hdl_t ;


 int NV_UNIQUE_NAME ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;

nvlist_t *
fmd_nvl_alloc(fmd_hdl_t *hdl, int flags)
{
 nvlist_t *nvl = ((void*)0);

 if (nvlist_alloc(&nvl, NV_UNIQUE_NAME, 0) != 0)
  return (((void*)0));

 return (nvl);
}
