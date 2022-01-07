
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zed_strings_t ;
typedef int uint_t ;
typedef int uint64_t ;
struct zed_conf {char const* zedlet_dir; int zevent_fd; int zedlets; int path; int zfs_hdl; } ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int int64_t ;


 int EINVAL ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int ZED_VAR_PREFIX ;
 int ZEVENT_NONE ;
 int ZEVENT_VAR_PREFIX ;
 int _zed_event_add_env_preserve (int,int *) ;
 int _zed_event_add_env_restrict (int,int *,int ) ;
 int _zed_event_add_nvpair (int,int *,int *) ;
 int _zed_event_add_time_strings (int,int *,int *) ;
 int _zed_event_add_var (int,int *,int ,char*,char*,...) ;
 char* _zed_event_get_subclass (char*) ;
 int errno ;
 scalar_t__ getpid () ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_int64_array (int *,char*,int **,int*) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,char*,int*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int strerror (int ) ;
 int zed_conf_write_state (struct zed_conf*,int,int *) ;
 int zed_exec_process (int,char*,char const*,char const*,int ,int *,int ) ;
 int zed_log_msg (int ,char*,...) ;
 int * zed_strings_create () ;
 int zed_strings_destroy (int *) ;
 int zfs_agent_post_event (char*,int *,int *) ;
 int zpool_events_next (int ,int **,int*,int ,int ) ;

void
zed_event_service(struct zed_conf *zcp)
{
 nvlist_t *nvl;
 nvpair_t *nvp;
 int n_dropped;
 zed_strings_t *zsp;
 uint64_t eid;
 int64_t *etime;
 uint_t nelem;
 char *class;
 const char *subclass;
 int rv;

 if (!zcp) {
  errno = EINVAL;
  zed_log_msg(LOG_ERR, "Failed to service zevent: %s",
      strerror(errno));
  return;
 }
 rv = zpool_events_next(zcp->zfs_hdl, &nvl, &n_dropped, ZEVENT_NONE,
     zcp->zevent_fd);

 if ((rv != 0) || !nvl)
  return;

 if (n_dropped > 0) {
  zed_log_msg(LOG_WARNING, "Missed %d events", n_dropped);




 }
 if (nvlist_lookup_uint64(nvl, "eid", &eid) != 0) {
  zed_log_msg(LOG_WARNING, "Failed to lookup zevent eid");
 } else if (nvlist_lookup_int64_array(
     nvl, "time", &etime, &nelem) != 0) {
  zed_log_msg(LOG_WARNING,
      "Failed to lookup zevent time (eid=%llu)", eid);
 } else if (nelem != 2) {
  zed_log_msg(LOG_WARNING,
      "Failed to lookup zevent time (eid=%llu, nelem=%u)",
      eid, nelem);
 } else if (nvlist_lookup_string(nvl, "class", &class) != 0) {
  zed_log_msg(LOG_WARNING,
      "Failed to lookup zevent class (eid=%llu)", eid);
 } else {

  zfs_agent_post_event(class, ((void*)0), nvl);

  zsp = zed_strings_create();

  nvp = ((void*)0);
  while ((nvp = nvlist_next_nvpair(nvl, nvp)))
   _zed_event_add_nvpair(eid, zsp, nvp);

  _zed_event_add_env_restrict(eid, zsp, zcp->path);
  _zed_event_add_env_preserve(eid, zsp);

  _zed_event_add_var(eid, zsp, ZED_VAR_PREFIX, "PID",
      "%d", (int)getpid());
  _zed_event_add_var(eid, zsp, ZED_VAR_PREFIX, "ZEDLET_DIR",
      "%s", zcp->zedlet_dir);
  subclass = _zed_event_get_subclass(class);
  _zed_event_add_var(eid, zsp, ZEVENT_VAR_PREFIX, "SUBCLASS",
      "%s", (subclass ? subclass : class));

  _zed_event_add_time_strings(eid, zsp, etime);

  zed_exec_process(eid, class, subclass,
      zcp->zedlet_dir, zcp->zedlets, zsp, zcp->zevent_fd);

  zed_conf_write_state(zcp, eid, etime);

  zed_strings_destroy(zsp);
 }
 nvlist_free(nvl);
}
