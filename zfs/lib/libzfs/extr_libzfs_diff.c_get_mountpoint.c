
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int errbuf; TYPE_1__* zhp; } ;
typedef TYPE_2__ differ_info_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {int zfs_hdl; } ;


 scalar_t__ B_FALSE ;
 int EZFS_BADTYPE ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 scalar_t__ is_mounted (int ,char*,char**) ;
 int snprintf (int ,int,char*) ;
 int zfs_error (int ,int ,int ) ;

__attribute__((used)) static int
get_mountpoint(differ_info_t *di, char *dsnm, char **mntpt)
{
 boolean_t mounted;

 mounted = is_mounted(di->zhp->zfs_hdl, dsnm, mntpt);
 if (mounted == B_FALSE) {
  (void) snprintf(di->errbuf, sizeof (di->errbuf),
      dgettext(TEXT_DOMAIN,
      "Cannot diff an unmounted snapshot"));
  return (zfs_error(di->zhp->zfs_hdl, EZFS_BADTYPE, di->errbuf));
 }


 if (**mntpt == '/' && *(*mntpt + 1) == '\0')
  **mntpt = '\0';
 return (0);
}
