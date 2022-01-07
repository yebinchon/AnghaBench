
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef size_t uint_t ;
struct TYPE_4__ {int dryrun; } ;
typedef TYPE_1__ splitflags_t ;
typedef int nvlist_t ;


 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_PATH ;
 int * construct_spec (int *,int,char**) ;
 int fprintf (int ,char*,...) ;
 char* gettext (char*) ;
 char* is_grouping (char*,int*,int*) ;
 scalar_t__ make_disks (int *,int *) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int stderr ;
 int verify (int) ;
 scalar_t__ zpool_vdev_split (int *,char*,int **,int *,TYPE_1__) ;

nvlist_t *
split_mirror_vdev(zpool_handle_t *zhp, char *newname, nvlist_t *props,
    splitflags_t flags, int argc, char **argv)
{
 nvlist_t *newroot = ((void*)0), **child;
 uint_t c, children;

 if (argc > 0) {
  if ((newroot = construct_spec(props, argc, argv)) == ((void*)0)) {
   (void) fprintf(stderr, gettext("Unable to build a "
       "pool from the specified devices\n"));
   return (((void*)0));
  }

  if (!flags.dryrun && make_disks(zhp, newroot) != 0) {
   nvlist_free(newroot);
   return (((void*)0));
  }


  verify(nvlist_lookup_nvlist_array(newroot,
      ZPOOL_CONFIG_CHILDREN, &child, &children) == 0);
  for (c = 0; c < children; c++) {
   char *path;
   const char *type;
   int min, max;

   verify(nvlist_lookup_string(child[c],
       ZPOOL_CONFIG_PATH, &path) == 0);
   if ((type = is_grouping(path, &min, &max)) != ((void*)0)) {
    (void) fprintf(stderr, gettext("Cannot use "
        "'%s' as a device for splitting\n"), type);
    nvlist_free(newroot);
    return (((void*)0));
   }
  }
 }

 if (zpool_vdev_split(zhp, newname, &newroot, props, flags) != 0) {
  nvlist_free(newroot);
  return (((void*)0));
 }

 return (newroot);
}
