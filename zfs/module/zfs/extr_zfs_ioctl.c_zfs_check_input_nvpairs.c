
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zvec_nvl_key_count; TYPE_2__* zvec_nvl_keys; } ;
typedef TYPE_1__ zfs_ioc_vec_t ;
struct TYPE_5__ {int zkey_flags; char* zkey_name; scalar_t__ zkey_type; } ;
typedef TYPE_2__ zfs_ioc_key_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef scalar_t__ data_type_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ DATA_TYPE_ANY ;
 scalar_t__ DATA_TYPE_NVLIST ;
 int SET_ERROR (int ) ;
 int ZFS_ERR_IOC_ARG_BADTYPE ;
 int ZFS_ERR_IOC_ARG_REQUIRED ;
 int ZFS_ERR_IOC_ARG_UNAVAIL ;
 int ZK_OPTIONAL ;
 int ZK_WILDCARDLIST ;
 int nvlist_exists (int *,char*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
zfs_check_input_nvpairs(nvlist_t *innvl, const zfs_ioc_vec_t *vec)
{
 const zfs_ioc_key_t *nvl_keys = vec->zvec_nvl_keys;
 boolean_t required_keys_found = B_FALSE;




 for (nvpair_t *pair = nvlist_next_nvpair(innvl, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(innvl, pair)) {
  char *name = nvpair_name(pair);
  data_type_t type = nvpair_type(pair);
  boolean_t identified = B_FALSE;




  for (int k = 0; k < vec->zvec_nvl_key_count; k++) {

   if ((nvl_keys[k].zkey_flags & ZK_WILDCARDLIST) == 0 &&
       strcmp(nvl_keys[k].zkey_name, name) != 0)
    continue;

   identified = B_TRUE;

   if (nvl_keys[k].zkey_type != DATA_TYPE_ANY &&
       nvl_keys[k].zkey_type != type) {
    return (SET_ERROR(ZFS_ERR_IOC_ARG_BADTYPE));
   }

   if (nvl_keys[k].zkey_flags & ZK_OPTIONAL)
    continue;

   required_keys_found = B_TRUE;
   break;
  }


  if (!identified &&
      (strcmp(name, "optional") != 0 ||
      type != DATA_TYPE_NVLIST)) {
   return (SET_ERROR(ZFS_ERR_IOC_ARG_UNAVAIL));
  }
 }


 for (int k = 0; k < vec->zvec_nvl_key_count; k++) {
  if (nvl_keys[k].zkey_flags & ZK_OPTIONAL)
   continue;

  if (nvl_keys[k].zkey_flags & ZK_WILDCARDLIST) {

   if (!required_keys_found)
    return (SET_ERROR(ZFS_ERR_IOC_ARG_REQUIRED));
   continue;
  }

  if (!nvlist_exists(innvl, nvl_keys[k].zkey_name))
   return (SET_ERROR(ZFS_ERR_IOC_ARG_REQUIRED));
 }

 return (0);
}
