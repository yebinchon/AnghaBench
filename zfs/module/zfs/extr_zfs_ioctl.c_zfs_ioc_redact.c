
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int ENXIO ;
 int SET_ERROR (int ) ;
 int dmu_redact_snap (char const*,int *,char*) ;
 scalar_t__ fnvlist_num_pairs (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char*,int **) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;

__attribute__((used)) static int
zfs_ioc_redact(const char *snapname, nvlist_t *innvl, nvlist_t *outnvl)
{
 nvlist_t *redactnvl = ((void*)0);
 char *redactbook = ((void*)0);

 if (nvlist_lookup_nvlist(innvl, "snapnv", &redactnvl) != 0)
  return (SET_ERROR(EINVAL));
 if (fnvlist_num_pairs(redactnvl) == 0)
  return (SET_ERROR(ENXIO));
 if (nvlist_lookup_string(innvl, "bookname", &redactbook) != 0)
  return (SET_ERROR(EINVAL));

 return (dmu_redact_snap(snapname, redactnvl, redactbook));
}
