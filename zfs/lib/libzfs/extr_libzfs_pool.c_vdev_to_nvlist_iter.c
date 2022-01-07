
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_TRUE ;


 int ZPOOL_CONFIG_CHILDREN ;
 char* ZPOOL_CONFIG_GUID ;
 char* ZPOOL_CONFIG_ID ;
 char* ZPOOL_CONFIG_IS_LOG ;
 int ZPOOL_CONFIG_L2CACHE ;
 char* ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_SPARES ;
 char* ZPOOL_CONFIG_TYPE ;
 char* ZPOOL_CONFIG_WHOLE_DISK ;
 int errno ;
 int free (char*) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 int nvlist_lookup_string (int *,char*,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,char*,scalar_t__*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int nvpair_type (int *) ;
 int nvpair_value_string (int *,char**) ;
 int nvpair_value_uint64 (int *,scalar_t__*) ;
 int strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;
 char* strrchr (char*,char) ;
 scalar_t__ strtoull (char*,char**,int) ;
 int verify (int) ;
 int zfs_strcmp_pathname (char*,char*,scalar_t__) ;
 int zpool_vdev_is_interior (char*) ;

__attribute__((used)) static nvlist_t *
vdev_to_nvlist_iter(nvlist_t *nv, nvlist_t *search, boolean_t *avail_spare,
    boolean_t *l2cache, boolean_t *log)
{
 uint_t c, children;
 nvlist_t **child;
 nvlist_t *ret;
 uint64_t is_log;
 char *srchkey;
 nvpair_t *pair = nvlist_next_nvpair(search, ((void*)0));


 if (search == ((void*)0) || pair == ((void*)0))
  return (((void*)0));


 srchkey = nvpair_name(pair);

 switch (nvpair_type(pair)) {
 case 128:
  if (strcmp(srchkey, ZPOOL_CONFIG_GUID) == 0) {
   uint64_t srchval, theguid;

   verify(nvpair_value_uint64(pair, &srchval) == 0);
   verify(nvlist_lookup_uint64(nv, ZPOOL_CONFIG_GUID,
       &theguid) == 0);
   if (theguid == srchval)
    return (nv);
  }
  break;

 case 129: {
  char *srchval, *val;

  verify(nvpair_value_string(pair, &srchval) == 0);
  if (nvlist_lookup_string(nv, srchkey, &val) != 0)
   break;
  if (strcmp(srchkey, ZPOOL_CONFIG_PATH) == 0) {
   uint64_t wholedisk = 0;

   (void) nvlist_lookup_uint64(nv, ZPOOL_CONFIG_WHOLE_DISK,
       &wholedisk);
   if (zfs_strcmp_pathname(srchval, val, wholedisk) == 0)
    return (nv);

  } else if (strcmp(srchkey, ZPOOL_CONFIG_TYPE) == 0 && val) {
   char *type, *idx, *end, *p;
   uint64_t id, vdev_id;






   if ((type = strdup(srchval)) == ((void*)0))
    return (((void*)0));

   if ((p = strrchr(type, '-')) == ((void*)0)) {
    free(type);
    break;
   }
   idx = p + 1;
   *p = '\0';




   if (strncmp(val, type, strlen(val)) != 0) {
    free(type);
    break;
   }

   verify(zpool_vdev_is_interior(type));
   verify(nvlist_lookup_uint64(nv, ZPOOL_CONFIG_ID,
       &id) == 0);

   errno = 0;
   vdev_id = strtoull(idx, &end, 10);

   free(type);
   if (errno != 0)
    return (((void*)0));




   if (vdev_id == id)
    return (nv);
  }




  if (strcmp(srchval, val) == 0)
   return (nv);
  break;
 }

 default:
  break;
 }

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
     &child, &children) != 0)
  return (((void*)0));

 for (c = 0; c < children; c++) {
  if ((ret = vdev_to_nvlist_iter(child[c], search,
      avail_spare, l2cache, ((void*)0))) != ((void*)0)) {






   if (log != ((void*)0) &&
       nvlist_lookup_uint64(child[c],
       ZPOOL_CONFIG_IS_LOG, &is_log) == 0 &&
       is_log) {
    *log = B_TRUE;
   }
   return (ret);
  }
 }

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_SPARES,
     &child, &children) == 0) {
  for (c = 0; c < children; c++) {
   if ((ret = vdev_to_nvlist_iter(child[c], search,
       avail_spare, l2cache, ((void*)0))) != ((void*)0)) {
    *avail_spare = B_TRUE;
    return (ret);
   }
  }
 }

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_L2CACHE,
     &child, &children) == 0) {
  for (c = 0; c < children; c++) {
   if ((ret = vdev_to_nvlist_iter(child[c], search,
       avail_spare, l2cache, ((void*)0))) != ((void*)0)) {
    *l2cache = B_TRUE;
    return (ret);
   }
  }
 }

 return (((void*)0));
}
