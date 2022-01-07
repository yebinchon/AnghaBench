
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int MAXPATHLEN ;
 int ZPOOL_ERR_DATASET ;
 int ZPOOL_ERR_OBJECT ;
 int free (char*) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 int printf (char*,...) ;
 char* safe_malloc (size_t) ;
 int verify (int) ;
 scalar_t__ zpool_get_errlog (int *,int **) ;
 int zpool_obj_to_path (int *,int ,int ,char*,size_t) ;

__attribute__((used)) static void
print_error_log(zpool_handle_t *zhp)
{
 nvlist_t *nverrlist = ((void*)0);
 nvpair_t *elem;
 char *pathname;
 size_t len = MAXPATHLEN * 2;

 if (zpool_get_errlog(zhp, &nverrlist) != 0)
  return;

 (void) printf("errors: Permanent errors have been "
     "detected in the following files:\n\n");

 pathname = safe_malloc(len);
 elem = ((void*)0);
 while ((elem = nvlist_next_nvpair(nverrlist, elem)) != ((void*)0)) {
  nvlist_t *nv;
  uint64_t dsobj, obj;

  verify(nvpair_value_nvlist(elem, &nv) == 0);
  verify(nvlist_lookup_uint64(nv, ZPOOL_ERR_DATASET,
      &dsobj) == 0);
  verify(nvlist_lookup_uint64(nv, ZPOOL_ERR_OBJECT,
      &obj) == 0);
  zpool_obj_to_path(zhp, dsobj, obj, pathname, len);
  (void) printf("%7s %s\n", "", pathname);
 }
 free(pathname);
 nvlist_free(nverrlist);
}
