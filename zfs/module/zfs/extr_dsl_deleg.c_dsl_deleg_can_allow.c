
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int EPERM ;
 int SET_ERROR (int ) ;
 int VERIFY (int) ;
 char const* ZFS_DELEG_PERM_ALLOW ;
 int dsl_deleg_access (char*,char const*,int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 scalar_t__ strcmp (char const*,char const*) ;

int
dsl_deleg_can_allow(char *ddname, nvlist_t *nvp, cred_t *cr)
{
 nvpair_t *whopair = ((void*)0);
 int error;

 if ((error = dsl_deleg_access(ddname, ZFS_DELEG_PERM_ALLOW, cr)) != 0)
  return (error);

 while ((whopair = nvlist_next_nvpair(nvp, whopair))) {
  nvlist_t *perms;
  nvpair_t *permpair = ((void*)0);

  VERIFY(nvpair_value_nvlist(whopair, &perms) == 0);

  while ((permpair = nvlist_next_nvpair(perms, permpair))) {
   const char *perm = nvpair_name(permpair);

   if (strcmp(perm, ZFS_DELEG_PERM_ALLOW) == 0)
    return (SET_ERROR(EPERM));

   if ((error = dsl_deleg_access(ddname, perm, cr)) != 0)
    return (error);
  }
 }
 return (0);
}
