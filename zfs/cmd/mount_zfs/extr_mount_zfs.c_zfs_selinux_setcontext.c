
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int zfs_handle_t ;
typedef int context ;


 int B_FALSE ;
 int B_TRUE ;
 int ZFS_MAXPROPLEN ;
 int append_mntopt (char const*,char*,char*,char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ zfs_prop_get (int *,int ,char*,int,int *,int *,int ,int ) ;

__attribute__((used)) static void
zfs_selinux_setcontext(zfs_handle_t *zhp, zfs_prop_t zpt, const char *name,
    char *mntopts, char *mtabopt)
{
 char context[ZFS_MAXPROPLEN];

 if (zfs_prop_get(zhp, zpt, context, sizeof (context),
     ((void*)0), ((void*)0), 0, B_FALSE) == 0) {
  if (strcmp(context, "none") != 0)
   append_mntopt(name, context, mntopts, mtabopt, B_TRUE);
 }
}
