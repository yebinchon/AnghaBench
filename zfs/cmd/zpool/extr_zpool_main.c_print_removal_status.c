
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int uint_t ;
typedef int uint64_t ;
typedef int u_longlong_t ;
typedef int total_buf ;
typedef int time_t ;
typedef int rate_buf ;
struct TYPE_3__ {scalar_t__ prs_state; int prs_removing_vdev; int prs_start_time; int prs_end_time; int prs_copied; int prs_to_copy; int prs_mapping_memory; } ;
typedef TYPE_1__ pool_removal_stat_t ;
typedef int nvlist_t ;
typedef int mem_buf ;
typedef int longlong_t ;
typedef int examined_buf ;
typedef int copied_buf ;


 int B_TRUE ;
 scalar_t__ DSS_CANCELED ;
 scalar_t__ DSS_FINISHED ;
 scalar_t__ DSS_NONE ;
 scalar_t__ DSS_SCANNING ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int assert (int) ;
 char* ctime (int*) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 int g_zfs ;
 char* gettext (char*) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,int*) ;
 int printf (char*,...) ;
 int time (int *) ;
 int verify (int) ;
 int zfs_nicenum (int,char*,int) ;
 int * zpool_get_config (int *,int *) ;
 char* zpool_vdev_name (int ,int *,int *,int ) ;

__attribute__((used)) static void
print_removal_status(zpool_handle_t *zhp, pool_removal_stat_t *prs)
{
 char copied_buf[7], examined_buf[7], total_buf[7], rate_buf[7];
 time_t start, end;
 nvlist_t *config, *nvroot;
 nvlist_t **child;
 uint_t children;
 char *vdev_name;

 if (prs == ((void*)0) || prs->prs_state == DSS_NONE)
  return;




 config = zpool_get_config(zhp, ((void*)0));
 nvroot = fnvlist_lookup_nvlist(config,
     ZPOOL_CONFIG_VDEV_TREE);
 verify(nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_CHILDREN,
     &child, &children) == 0);
 assert(prs->prs_removing_vdev < children);
 vdev_name = zpool_vdev_name(g_zfs, zhp,
     child[prs->prs_removing_vdev], B_TRUE);

 (void) printf(gettext("remove: "));

 start = prs->prs_start_time;
 end = prs->prs_end_time;
 zfs_nicenum(prs->prs_copied, copied_buf, sizeof (copied_buf));




 if (prs->prs_state == DSS_FINISHED) {
  uint64_t minutes_taken = (end - start) / 60;

  (void) printf(gettext("Removal of vdev %llu copied %s "
      "in %lluh%um, completed on %s"),
      (longlong_t)prs->prs_removing_vdev,
      copied_buf,
      (u_longlong_t)(minutes_taken / 60),
      (uint_t)(minutes_taken % 60),
      ctime((time_t *)&end));
 } else if (prs->prs_state == DSS_CANCELED) {
  (void) printf(gettext("Removal of %s canceled on %s"),
      vdev_name, ctime(&end));
 } else {
  uint64_t copied, total, elapsed, mins_left, hours_left;
  double fraction_done;
  uint_t rate;

  assert(prs->prs_state == DSS_SCANNING);




  (void) printf(gettext(
      "Evacuation of %s in progress since %s"),
      vdev_name, ctime(&start));

  copied = prs->prs_copied > 0 ? prs->prs_copied : 1;
  total = prs->prs_to_copy;
  fraction_done = (double)copied / total;


  elapsed = time(((void*)0)) - prs->prs_start_time;
  elapsed = elapsed > 0 ? elapsed : 1;
  rate = copied / elapsed;
  rate = rate > 0 ? rate : 1;
  mins_left = ((total - copied) / rate) / 60;
  hours_left = mins_left / 60;

  zfs_nicenum(copied, examined_buf, sizeof (examined_buf));
  zfs_nicenum(total, total_buf, sizeof (total_buf));
  zfs_nicenum(rate, rate_buf, sizeof (rate_buf));





  (void) printf(gettext("    %s copied out of %s at %s/s, "
      "%.2f%% done"),
      examined_buf, total_buf, rate_buf, 100 * fraction_done);
  if (hours_left < (30 * 24)) {
   (void) printf(gettext(", %lluh%um to go\n"),
       (u_longlong_t)hours_left, (uint_t)(mins_left % 60));
  } else {
   (void) printf(gettext(
       ", (copy is slow, no estimated time)\n"));
  }
 }

 if (prs->prs_mapping_memory > 0) {
  char mem_buf[7];
  zfs_nicenum(prs->prs_mapping_memory, mem_buf, sizeof (mem_buf));
  (void) printf(gettext("    %s memory used for "
      "removed device mappings\n"),
      mem_buf);
 }
}
