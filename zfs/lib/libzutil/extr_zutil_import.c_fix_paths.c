
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
struct TYPE_3__ {scalar_t__ ne_guid; char* ne_name; scalar_t__ ne_num_labels; scalar_t__ ne_order; struct TYPE_3__* ne_next; } ;
typedef TYPE_1__ name_entry_t ;
typedef int libpc_handle_t ;


 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_PATH ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,scalar_t__) ;
 int update_vdev_config_dev_strs (int *) ;
 int verify (int) ;

__attribute__((used)) static int
fix_paths(libpc_handle_t *hdl, nvlist_t *nv, name_entry_t *names)
{
 nvlist_t **child;
 uint_t c, children;
 uint64_t guid;
 name_entry_t *ne, *best;
 char *path;

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
     &child, &children) == 0) {
  for (c = 0; c < children; c++)
   if (fix_paths(hdl, child[c], names) != 0)
    return (-1);
  return (0);
 }
 verify(nvlist_lookup_uint64(nv, ZPOOL_CONFIG_GUID, &guid) == 0);
 if (nvlist_lookup_string(nv, ZPOOL_CONFIG_PATH, &path) != 0)
  path = ((void*)0);

 best = ((void*)0);
 for (ne = names; ne != ((void*)0); ne = ne->ne_next) {
  if (ne->ne_guid == guid) {
   if (path == ((void*)0)) {
    best = ne;
    break;
   }

   if ((strlen(path) == strlen(ne->ne_name)) &&
       strncmp(path, ne->ne_name, strlen(path)) == 0) {
    best = ne;
    break;
   }

   if (best == ((void*)0)) {
    best = ne;
    continue;
   }


   if (ne->ne_num_labels > best->ne_num_labels) {
    best = ne;
    continue;
   }


   if (ne->ne_num_labels == best->ne_num_labels &&
       ne->ne_order < best->ne_order) {
    best = ne;
    continue;
   }
  }
 }

 if (best == ((void*)0))
  return (0);

 if (nvlist_add_string(nv, ZPOOL_CONFIG_PATH, best->ne_name) != 0)
  return (-1);

 update_vdev_config_dev_strs(nv);

 return (0);
}
