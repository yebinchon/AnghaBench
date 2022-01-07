
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zfs_hdl; int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct holdarg {char const* snapname; char const* tag; int nvl; int recursive; } ;
typedef int errbuf ;
typedef int boolean_t ;


 int ENOENT ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int fnvlist_alloc () ;
 int fnvlist_free (int ) ;
 scalar_t__ nvlist_empty (int ) ;
 int snprintf (char*,int,char*,int ,char const*) ;
 int zfs_handle_dup (TYPE_1__*) ;
 int zfs_hold_nvl (TYPE_1__*,int,int ) ;
 int zfs_hold_one (int ,struct holdarg*) ;
 int zfs_standard_error (int ,int,char*) ;

int
zfs_hold(zfs_handle_t *zhp, const char *snapname, const char *tag,
    boolean_t recursive, int cleanup_fd)
{
 int ret;
 struct holdarg ha;

 ha.nvl = fnvlist_alloc();
 ha.snapname = snapname;
 ha.tag = tag;
 ha.recursive = recursive;
 (void) zfs_hold_one(zfs_handle_dup(zhp), &ha);

 if (nvlist_empty(ha.nvl)) {
  char errbuf[1024];

  fnvlist_free(ha.nvl);
  ret = ENOENT;
  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN,
      "cannot hold snapshot '%s@%s'"),
      zhp->zfs_name, snapname);
  (void) zfs_standard_error(zhp->zfs_hdl, ret, errbuf);
  return (ret);
 }

 ret = zfs_hold_nvl(zhp, cleanup_fd, ha.nvl);
 fnvlist_free(ha.nvl);

 return (ret);
}
