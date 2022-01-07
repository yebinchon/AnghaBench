
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_8__ {int zprl_parity; int zprl_children; int zprl_type; } ;
typedef TYPE_1__ replication_level_t ;
typedef int nvlist_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int free (TYPE_1__*) ;
 TYPE_1__* get_replication (int *,int ) ;
 int gettext (char*) ;
 scalar_t__ is_raidz_mirror (TYPE_1__*,TYPE_1__*,TYPE_1__**,TYPE_1__**) ;
 scalar_t__ num_logs (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,scalar_t__*) ;
 scalar_t__ strcmp (int ,int ) ;
 int vdev_error (int ,scalar_t__,scalar_t__,...) ;
 int verify (int) ;

__attribute__((used)) static int
check_replication(nvlist_t *config, nvlist_t *newroot)
{
 nvlist_t **child;
 uint_t children;
 replication_level_t *current = ((void*)0), *new;
 replication_level_t *raidz, *mirror;
 int ret;





 if (config != ((void*)0)) {
  nvlist_t *nvroot;

  verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
      &nvroot) == 0);
  if ((current = get_replication(nvroot, B_FALSE)) == ((void*)0))
   return (0);
 }




 if ((nvlist_lookup_nvlist_array(newroot, ZPOOL_CONFIG_CHILDREN,
     &child, &children) != 0) || (children == 0)) {
  free(current);
  return (0);
 }




 if (num_logs(newroot) == children) {
  free(current);
  return (0);
 }





 if ((new = get_replication(newroot, B_TRUE)) == ((void*)0)) {
  free(current);
  return (-1);
 }





 ret = 0;
 if (current != ((void*)0)) {
  if (is_raidz_mirror(current, new, &raidz, &mirror) ||
      is_raidz_mirror(new, current, &raidz, &mirror)) {
   if (raidz->zprl_parity != mirror->zprl_children - 1) {
    vdev_error(gettext(
        "mismatched replication level: pool and "
        "new vdev with different redundancy, %s "
        "and %s vdevs, %llu vs. %llu (%llu-way)\n"),
        raidz->zprl_type,
        mirror->zprl_type,
        raidz->zprl_parity,
        mirror->zprl_children - 1,
        mirror->zprl_children);
    ret = -1;
   }
  } else if (strcmp(current->zprl_type, new->zprl_type) != 0) {
   vdev_error(gettext(
       "mismatched replication level: pool uses %s "
       "and new vdev is %s\n"),
       current->zprl_type, new->zprl_type);
   ret = -1;
  } else if (current->zprl_parity != new->zprl_parity) {
   vdev_error(gettext(
       "mismatched replication level: pool uses %llu "
       "device parity and new vdev uses %llu\n"),
       current->zprl_parity, new->zprl_parity);
   ret = -1;
  } else if (current->zprl_children != new->zprl_children) {
   vdev_error(gettext(
       "mismatched replication level: pool uses %llu-way "
       "%s and new vdev uses %llu-way %s\n"),
       current->zprl_children, current->zprl_type,
       new->zprl_children, new->zprl_type);
   ret = -1;
  }
 }

 free(new);
 if (current != ((void*)0))
  free(current);

 return (ret);
}
