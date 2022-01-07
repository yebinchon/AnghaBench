
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_ioc_t ;
typedef int pname ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int data_type_t ;
typedef int boolean_t ;



 int MAXNAMELEN ;
 int ZFS_ERR_IOC_ARG_BADTYPE ;
 int ZFS_ERR_IOC_ARG_REQUIRED ;
 int ZFS_ERR_IOC_ARG_UNAVAIL ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int fnvlist_add_nvpair (int *,int *) ;
 int fnvlist_add_string (int *,char*,char*) ;
 int fnvlist_add_uint64 (int *,char*,int) ;
 int * fnvlist_alloc () ;
 int fnvlist_remove (int *,char*) ;
 int fnvlist_remove_nvpair (int *,int *) ;
 int lzc_ioctl_run (int ,char const*,int *,int) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int nvpair_type (int *) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int
lzc_ioctl_test(zfs_ioc_t ioc, const char *name, nvlist_t *required,
    nvlist_t *optional, int expected_error, boolean_t wildcard)
{
 nvlist_t *input = fnvlist_alloc();
 nvlist_t *future = fnvlist_alloc();
 int error = 0;

 if (required != ((void*)0)) {
  for (nvpair_t *pair = nvlist_next_nvpair(required, ((void*)0));
      pair != ((void*)0); pair = nvlist_next_nvpair(required, pair)) {
   fnvlist_add_nvpair(input, pair);
  }
 }
 if (optional != ((void*)0)) {
  for (nvpair_t *pair = nvlist_next_nvpair(optional, ((void*)0));
      pair != ((void*)0); pair = nvlist_next_nvpair(optional, pair)) {
   fnvlist_add_nvpair(input, pair);
  }
 }




 if (!wildcard)
  fnvlist_add_nvlist(input, "optional", future);
 lzc_ioctl_run(ioc, name, input, expected_error);
 if (!wildcard)
  fnvlist_remove(input, "optional");




 if (!wildcard) {
  fnvlist_add_string(input, "bogus_input", "bogus");
  lzc_ioctl_run(ioc, name, input, ZFS_ERR_IOC_ARG_UNAVAIL);
  fnvlist_remove(input, "bogus_input");
 }




 if (required != ((void*)0)) {
  nvlist_t *empty = fnvlist_alloc();
  lzc_ioctl_run(ioc, name, empty, ZFS_ERR_IOC_ARG_REQUIRED);
  nvlist_free(empty);
 }




 if (required != ((void*)0) || optional != ((void*)0)) {



  for (nvpair_t *pair = nvlist_next_nvpair(input, ((void*)0));
      pair != ((void*)0); pair = nvlist_next_nvpair(input, pair)) {
   char pname[MAXNAMELEN];
   data_type_t ptype;

   strlcpy(pname, nvpair_name(pair), sizeof (pname));
   pname[sizeof (pname) - 1] = '\0';
   ptype = nvpair_type(pair);
   fnvlist_remove_nvpair(input, pair);

   switch (ptype) {
   case 128:
    fnvlist_add_uint64(input, pname, 42);
    break;
   default:
    fnvlist_add_string(input, pname, "bogus");
    break;
   }
  }
  lzc_ioctl_run(ioc, name, input, ZFS_ERR_IOC_ARG_BADTYPE);
 }

 nvlist_free(future);
 nvlist_free(input);

 return (error);
}
