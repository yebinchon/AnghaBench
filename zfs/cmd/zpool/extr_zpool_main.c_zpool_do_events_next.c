
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nvlist_t ;
struct TYPE_4__ {scalar_t__ verbose; int poolname; scalar_t__ follow; int scripted; } ;
typedef TYPE_1__ ev_opts_t ;


 int FM_FMRI_ZFS_POOL ;
 int O_RDWR ;
 int VERIFY (int) ;
 int ZEVENT_NONBLOCK ;
 int ZEVENT_NONE ;
 int ZFS_DEV ;
 scalar_t__ close (int) ;
 int fflush (int ) ;
 int g_zfs ;
 char* gettext (char*) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int open (int ,int ) ;
 int printf (char*,...) ;
 int stdout ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strlen (int ) ;
 int zpool_do_events_nvprint (int *,int) ;
 int zpool_do_events_short (int *,TYPE_1__*) ;
 int zpool_events_next (int ,int **,int*,int ,int) ;

__attribute__((used)) static int
zpool_do_events_next(ev_opts_t *opts)
{
 nvlist_t *nvl;
 int zevent_fd, ret, dropped;
 char *pool;

 zevent_fd = open(ZFS_DEV, O_RDWR);
 VERIFY(zevent_fd >= 0);

 if (!opts->scripted)
  (void) printf(gettext("%-30s %s\n"), "TIME", "CLASS");

 while (1) {
  ret = zpool_events_next(g_zfs, &nvl, &dropped,
      (opts->follow ? ZEVENT_NONE : ZEVENT_NONBLOCK), zevent_fd);
  if (ret || nvl == ((void*)0))
   break;

  if (dropped > 0)
   (void) printf(gettext("dropped %d events\n"), dropped);

  if (strlen(opts->poolname) > 0 &&
      nvlist_lookup_string(nvl, FM_FMRI_ZFS_POOL, &pool) == 0 &&
      strcmp(opts->poolname, pool) != 0)
   continue;

  zpool_do_events_short(nvl, opts);

  if (opts->verbose) {
   zpool_do_events_nvprint(nvl, 8);
   printf(gettext("\n"));
  }
  (void) fflush(stdout);

  nvlist_free(nvl);
 }

 VERIFY(0 == close(zevent_fd));

 return (ret);
}
