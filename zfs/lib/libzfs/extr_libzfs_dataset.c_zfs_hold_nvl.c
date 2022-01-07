
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;






 int EZFS_BADTYPE ;
 int EZFS_BADVERSION ;
 int EZFS_REFTAG_HOLD ;
 int EZFS_TAGTOOLONG ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int fnvlist_free (int *) ;
 int fnvpair_value_int32 (int *) ;
 int lzc_hold (int *,int,int **) ;
 scalar_t__ nvlist_empty (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int snprintf (char*,int,char*,...) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 int zfs_standard_error (int *,int,char*) ;

int
zfs_hold_nvl(zfs_handle_t *zhp, int cleanup_fd, nvlist_t *holds)
{
 int ret;
 nvlist_t *errors;
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 char errbuf[1024];
 nvpair_t *elem;

 errors = ((void*)0);
 ret = lzc_hold(holds, cleanup_fd, &errors);

 if (ret == 0) {

  fnvlist_free(errors);
  return (0);
 }

 if (nvlist_empty(errors)) {

  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN, "cannot hold"));
  switch (ret) {
  case 128:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "pool must be upgraded"));
   (void) zfs_error(hdl, EZFS_BADVERSION, errbuf);
   break;
  case 129:
   (void) zfs_error(hdl, EZFS_BADTYPE, errbuf);
   break;
  default:
   (void) zfs_standard_error(hdl, ret, errbuf);
  }
 }

 for (elem = nvlist_next_nvpair(errors, ((void*)0));
     elem != ((void*)0);
     elem = nvlist_next_nvpair(errors, elem)) {
  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN,
      "cannot hold snapshot '%s'"), nvpair_name(elem));
  switch (fnvpair_value_int32(elem)) {
  case 131:






   (void) zfs_error(hdl, EZFS_TAGTOOLONG, errbuf);
   break;
  case 129:
   (void) zfs_error(hdl, EZFS_BADTYPE, errbuf);
   break;
  case 130:
   (void) zfs_error(hdl, EZFS_REFTAG_HOLD, errbuf);
   break;
  default:
   (void) zfs_standard_error(hdl,
       fnvpair_value_int32(elem), errbuf);
  }
 }

 fnvlist_free(errors);
 return (ret);
}
