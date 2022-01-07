
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
struct TYPE_2__ {size_t cb_max_namelen; size_t cb_max_taglen; int cb_snapname; scalar_t__ cb_recursive; int ** cb_nvlp; } ;
typedef TYPE_1__ holds_cbdata_t ;


 int nvlist_add_nvlist (int *,char const*,int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (int ,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ zfs_get_holds (int *,int **) ;
 char* zfs_get_name (int *) ;

__attribute__((used)) static int
holds_callback(zfs_handle_t *zhp, void *data)
{
 holds_cbdata_t *cbp = data;
 nvlist_t *top_nvl = *cbp->cb_nvlp;
 nvlist_t *nvl = ((void*)0);
 nvpair_t *nvp = ((void*)0);
 const char *zname = zfs_get_name(zhp);
 size_t znamelen = strlen(zname);

 if (cbp->cb_recursive) {
  const char *snapname;
  char *delim = strchr(zname, '@');
  if (delim == ((void*)0))
   return (0);

  snapname = delim + 1;
  if (strcmp(cbp->cb_snapname, snapname))
   return (0);
 }

 if (zfs_get_holds(zhp, &nvl) != 0)
  return (-1);

 if (znamelen > cbp->cb_max_namelen)
  cbp->cb_max_namelen = znamelen;

 while ((nvp = nvlist_next_nvpair(nvl, nvp)) != ((void*)0)) {
  const char *tag = nvpair_name(nvp);
  size_t taglen = strlen(tag);
  if (taglen > cbp->cb_max_taglen)
   cbp->cb_max_taglen = taglen;
 }

 return (nvlist_add_nvlist(top_nvl, zname, nvl));
}
