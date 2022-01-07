
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ zfs_type; int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_7__ {char* member_0; int zc_cookie; int zc_flags; int zc_value; int zc_name; scalar_t__ zc_fromobj; int zc_sendobj; scalar_t__ zc_obj; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;
typedef scalar_t__ boolean_t ;
 int EZFS_BADBACKUP ;
 int EZFS_CROSSTARGET ;
 int EZFS_CRYPTOFAILED ;
 int EZFS_NOENT ;
 int NV_UNIQUE_NAME ;
 int TEXT_DOMAIN ;
 int VERIFY (int) ;
 int ZFS_IOC_SEND ;
 int ZFS_PROP_OBJSETID ;
 scalar_t__ ZFS_TYPE_SNAPSHOT ;
 int assert (int) ;
 char* dgettext (int ,char*) ;
 int errno ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int *) ;
 scalar_t__ nvlist_add_string (int *,char*,char const*) ;
 scalar_t__ nvlist_add_uint64 (int *,char*,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int snprintf (char*,int,char*,int ) ;
 char* strerror (int) ;
 int strlcpy (int ,int ,int) ;
 int zfs_dataset_exists (int *,int ,scalar_t__) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int zfs_prop_get_int (TYPE_1__*,int ) ;
 int zfs_standard_error (int *,int,char*) ;

__attribute__((used)) static int
dump_ioctl(zfs_handle_t *zhp, const char *fromsnap, uint64_t fromsnap_obj,
    boolean_t fromorigin, int outfd, enum lzc_send_flags flags,
    nvlist_t *debugnv)
{
 zfs_cmd_t zc = {"\0"};
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 nvlist_t *thisdbg;

 assert(zhp->zfs_type == ZFS_TYPE_SNAPSHOT);
 assert(fromsnap_obj == 0 || !fromorigin);

 (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));
 zc.zc_cookie = outfd;
 zc.zc_obj = fromorigin;
 zc.zc_sendobj = zfs_prop_get_int(zhp, ZFS_PROP_OBJSETID);
 zc.zc_fromobj = fromsnap_obj;
 zc.zc_flags = flags;

 VERIFY(0 == nvlist_alloc(&thisdbg, NV_UNIQUE_NAME, 0));
 if (fromsnap && fromsnap[0] != '\0') {
  VERIFY(0 == nvlist_add_string(thisdbg,
      "fromsnap", fromsnap));
 }

 if (zfs_ioctl(zhp->zfs_hdl, ZFS_IOC_SEND, &zc) != 0) {
  char errbuf[1024];
  (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
      "warning: cannot send '%s'"), zhp->zfs_name);

  VERIFY(0 == nvlist_add_uint64(thisdbg, "error", errno));
  if (debugnv) {
   VERIFY(0 == nvlist_add_nvlist(debugnv,
       zhp->zfs_name, thisdbg));
  }
  nvlist_free(thisdbg);

  switch (errno) {
  case 128:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "not an earlier snapshot from the same fs"));
   return (zfs_error(hdl, EZFS_CROSSTARGET, errbuf));

  case 141:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "source key must be loaded"));
   return (zfs_error(hdl, EZFS_CRYPTOFAILED, errbuf));

  case 136:
   if (zfs_dataset_exists(hdl, zc.zc_name,
       ZFS_TYPE_SNAPSHOT)) {
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "incremental source (@%s) does not exist"),
        zc.zc_value);
   }
   return (zfs_error(hdl, EZFS_NOENT, errbuf));

  case 140:
  case 138:
  case 137:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 139:
  case 129:
   zfs_error_aux(hdl, strerror(errno));
   return (zfs_error(hdl, EZFS_BADBACKUP, errbuf));

  default:
   return (zfs_standard_error(hdl, errno, errbuf));
  }
 }

 if (debugnv)
  VERIFY(0 == nvlist_add_nvlist(debugnv, zhp->zfs_name, thisdbg));
 nvlist_free(thisdbg);

 return (0);
}
