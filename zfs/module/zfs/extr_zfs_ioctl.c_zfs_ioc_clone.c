
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 int ZPROP_SRC_LOCAL ;
 scalar_t__ dataset_namecheck (char*,int *,int *) ;
 int dmu_objset_clone (char const*,char*) ;
 int dsl_destroy_head (char const*) ;
 char* fnvlist_lookup_string (int *,char*) ;
 int nvlist_lookup_nvlist (int *,char*,int **) ;
 scalar_t__ strchr (char const*,char) ;
 int zfs_set_prop_nvlist (char const*,int ,int *,int *) ;

__attribute__((used)) static int
zfs_ioc_clone(const char *fsname, nvlist_t *innvl, nvlist_t *outnvl)
{
 int error = 0;
 nvlist_t *nvprops = ((void*)0);
 char *origin_name;

 origin_name = fnvlist_lookup_string(innvl, "origin");
 (void) nvlist_lookup_nvlist(innvl, "props", &nvprops);

 if (strchr(fsname, '@') ||
     strchr(fsname, '%'))
  return (SET_ERROR(EINVAL));

 if (dataset_namecheck(origin_name, ((void*)0), ((void*)0)) != 0)
  return (SET_ERROR(EINVAL));

 error = dmu_objset_clone(fsname, origin_name);




 if (error == 0) {
  error = zfs_set_prop_nvlist(fsname, ZPROP_SRC_LOCAL,
      nvprops, outnvl);
  if (error != 0)
   (void) dsl_destroy_head(fsname);
 }
 return (error);
}
