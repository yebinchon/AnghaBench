
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zfs_hdl; int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_9__ {int zc_cookie; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint64_t ;





 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int errno ;
 int strlcpy (int ,int ,int) ;
 int zcmd_expand_dst_nvlist (int ,TYPE_2__*) ;
 int zcmd_free_nvlists (TYPE_2__*) ;
 int zfs_ioctl (int ,int,TYPE_2__*) ;
 int zfs_standard_error (int ,int,int ) ;

__attribute__((used)) static int
zfs_do_list_ioctl(zfs_handle_t *zhp, int arg, zfs_cmd_t *zc)
{
 int rc;
 uint64_t orig_cookie;

 orig_cookie = zc->zc_cookie;
top:
 (void) strlcpy(zc->zc_name, zhp->zfs_name, sizeof (zc->zc_name));
 rc = zfs_ioctl(zhp->zfs_hdl, arg, zc);

 if (rc == -1) {
  switch (errno) {
  case 129:

   if (zcmd_expand_dst_nvlist(zhp->zfs_hdl, zc) != 0) {
    zcmd_free_nvlists(zc);
    return (-1);
   }
   zc->zc_cookie = orig_cookie;
   goto top;





  case 128:
  case 130:
   rc = 1;
   break;
  default:
   rc = zfs_standard_error(zhp->zfs_hdl, errno,
       dgettext(TEXT_DOMAIN,
       "cannot iterate filesystems"));
   break;
  }
 }
 return (rc);
}
