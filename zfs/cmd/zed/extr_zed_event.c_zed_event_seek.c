
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint64_t ;
struct zed_conf {int zevent_fd; int zfs_hdl; } ;
typedef int nvlist_t ;
typedef scalar_t__ int64_t ;


 int EINVAL ;
 int LOG_ERR ;
 int LOG_NOTICE ;
 int LOG_WARNING ;
 int ZEVENT_NONBLOCK ;
 int ZEVENT_SEEK_START ;
 int errno ;
 int free (int *) ;
 scalar_t__ nvlist_lookup_int64_array (int *,char*,scalar_t__**,int*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,char*,int*) ;
 int strerror (int ) ;
 int zed_log_msg (int ,char*,...) ;
 int zpool_events_next (int ,int **,int*,int ,int ) ;
 scalar_t__ zpool_events_seek (int ,int ,int ) ;

int
zed_event_seek(struct zed_conf *zcp, uint64_t saved_eid, int64_t saved_etime[])
{
 uint64_t eid;
 int found;
 nvlist_t *nvl;
 int n_dropped;
 int64_t *etime;
 uint_t nelem;
 int rv;

 if (!zcp) {
  errno = EINVAL;
  zed_log_msg(LOG_ERR, "Failed to seek zevent: %s",
      strerror(errno));
  return (-1);
 }
 eid = 0;
 found = 0;
 while ((eid < saved_eid) && !found) {
  rv = zpool_events_next(zcp->zfs_hdl, &nvl, &n_dropped,
      ZEVENT_NONBLOCK, zcp->zevent_fd);

  if ((rv != 0) || !nvl)
   break;

  if (n_dropped > 0) {
   zed_log_msg(LOG_WARNING, "Missed %d events", n_dropped);




  }
  if (nvlist_lookup_uint64(nvl, "eid", &eid) != 0) {
   zed_log_msg(LOG_WARNING, "Failed to lookup zevent eid");
  } else if (nvlist_lookup_int64_array(nvl, "time",
      &etime, &nelem) != 0) {
   zed_log_msg(LOG_WARNING,
       "Failed to lookup zevent time (eid=%llu)", eid);
  } else if (nelem != 2) {
   zed_log_msg(LOG_WARNING,
       "Failed to lookup zevent time (eid=%llu, nelem=%u)",
       eid, nelem);
  } else if ((eid != saved_eid) ||
      (etime[0] != saved_etime[0]) ||
      (etime[1] != saved_etime[1])) {

  } else {
   found = 1;
  }
  free(nvl);
 }
 if (!found && (saved_eid > 0)) {
  if (zpool_events_seek(zcp->zfs_hdl, ZEVENT_SEEK_START,
      zcp->zevent_fd) < 0)
   zed_log_msg(LOG_WARNING, "Failed to seek to eid=0");
  else
   eid = 0;
 }
 zed_log_msg(LOG_NOTICE, "Processing events since eid=%llu", eid);
 return (found ? 0 : -1);
}
