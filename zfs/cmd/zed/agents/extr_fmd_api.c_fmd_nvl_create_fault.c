
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int nvlist_t ;
typedef int fmd_hdl_t ;


 int FM_CLASS ;
 int FM_FAULT_ASRU ;
 int FM_FAULT_CERTAINTY ;
 int FM_FAULT_FRU ;
 int FM_FAULT_RESOURCE ;
 int FM_FAULT_VERSION ;
 int FM_VERSION ;
 int NV_UNIQUE_NAME ;
 int nvlist_add_nvlist (int *,int ,int *) ;
 int nvlist_add_string (int *,int ,char const*) ;
 int nvlist_add_uint8 (int *,int ,int ) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int strerror (int) ;
 int zed_log_die (char*,...) ;

nvlist_t *
fmd_nvl_create_fault(fmd_hdl_t *hdl, const char *class, uint8_t certainty,
    nvlist_t *asru, nvlist_t *fru, nvlist_t *resource)
{
 nvlist_t *nvl;
 int err = 0;

 if (nvlist_alloc(&nvl, NV_UNIQUE_NAME, 0) != 0)
  zed_log_die("failed to xalloc fault nvlist");

 err |= nvlist_add_uint8(nvl, FM_VERSION, FM_FAULT_VERSION);
 err |= nvlist_add_string(nvl, FM_CLASS, class);
 err |= nvlist_add_uint8(nvl, FM_FAULT_CERTAINTY, certainty);

 if (asru != ((void*)0))
  err |= nvlist_add_nvlist(nvl, FM_FAULT_ASRU, asru);
 if (fru != ((void*)0))
  err |= nvlist_add_nvlist(nvl, FM_FAULT_FRU, fru);
 if (resource != ((void*)0))
  err |= nvlist_add_nvlist(nvl, FM_FAULT_RESOURCE, resource);

 if (err)
  zed_log_die("failed to populate nvlist: %s\n", strerror(err));

 return (nvl);
}
