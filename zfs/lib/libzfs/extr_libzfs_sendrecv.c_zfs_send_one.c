
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_19__ {scalar_t__ verbosity; scalar_t__ backup; scalar_t__ holds; scalar_t__ props; scalar_t__ dedup; scalar_t__ progress; int parsable; scalar_t__ dryrun; int doall; int replicate; int raw; } ;
typedef TYPE_2__ sendflags_t ;
typedef int pthread_t ;
struct TYPE_20__ {int pa_fd; scalar_t__ pa_verbosity; int pa_estimate; int pa_parsable; TYPE_1__* pa_zhp; int member_0; } ;
typedef TYPE_3__ progress_arg_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
struct TYPE_21__ {int member_0; } ;
typedef TYPE_4__ dedup_arg_t ;


 int B_FALSE ;
 int B_TRUE ;
 int EZFS_BADBACKUP ;
 int EZFS_BUSY ;
 int EZFS_CROSSTARGET ;
 int EZFS_CRYPTOFAILED ;
 int EZFS_NOENT ;
 int EZFS_THREADCREATEFAILED ;
 void* PTHREAD_CANCELED ;
 int TEXT_DOMAIN ;
 int ZFS_TYPE_DATASET ;
 int close (int) ;
 char* dgettext (int ,char*) ;
 int errno ;
 int estimate_size (TYPE_1__*,char const*,int,TYPE_2__*,int ,int ,int ,char const*,char*) ;
 int get_dedup_fd (TYPE_1__*,TYPE_4__*,int,int *,int*) ;
 int lzc_exists (int ) ;
 int lzc_flags_from_sendflags (TYPE_2__*) ;
 int lzc_send_redacted (int ,char const*,int,int ,char const*) ;
 int pthread_cancel (int ) ;
 int pthread_create (int *,int *,int ,TYPE_3__*) ;
 int pthread_join (int ,void**) ;
 int send_conclusion_record (int,int *) ;
 int send_prelim_records (TYPE_1__*,int *,int,int ,int ,int,scalar_t__,int ,int ,scalar_t__,scalar_t__,scalar_t__,int ,int *,int *) ;
 int send_progress_thread ;
 int snapshot_is_before (TYPE_1__*,TYPE_1__*) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strchr (char const*,char) ;
 char* strerror (int) ;
 int zfs_close (TYPE_1__*) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 TYPE_1__* zfs_open (int *,char const*,int ) ;
 int zfs_standard_error (int *,int,char*) ;

int
zfs_send_one(zfs_handle_t *zhp, const char *from, int fd, sendflags_t *flags,
    const char *redactbook)
{
 int err;
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 int orig_fd = fd;
 pthread_t ddtid, ptid;
 progress_arg_t pa = { 0 };
 dedup_arg_t dda = { 0 };

 char errbuf[1024];
 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "warning: cannot send '%s'"), zhp->zfs_name);

 if (from != ((void*)0) && strchr(from, '@')) {
  zfs_handle_t *from_zhp = zfs_open(hdl, from,
      ZFS_TYPE_DATASET);
  if (from_zhp == ((void*)0))
   return (-1);
  if (!snapshot_is_before(from_zhp, zhp)) {
   zfs_close(from_zhp);
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "not an earlier snapshot from the same fs"));
   return (zfs_error(hdl, EZFS_CROSSTARGET, errbuf));
  }
  zfs_close(from_zhp);
 }




 if (flags->props || flags->holds || flags->backup) {
  err = send_prelim_records(zhp, ((void*)0), fd, B_TRUE, B_FALSE,
      flags->verbosity > 0, flags->dryrun, flags->raw,
      flags->replicate, flags->backup, flags->holds,
      flags->props, flags->doall, ((void*)0), ((void*)0));
  if (err != 0)
   return (err);
 }




 if (flags->verbosity != 0) {
  err = estimate_size(zhp, from, fd, flags, 0, 0, 0, redactbook,
      errbuf);
  if (err != 0)
   return (err);
 }

 if (flags->dryrun)
  return (0);





 if (flags->dedup) {
  err = get_dedup_fd(zhp, &dda, fd, &ddtid, &fd);
  if (err != 0)
   return (err);
 }





 if (flags->progress) {
  pa.pa_zhp = zhp;
  pa.pa_fd = fd;
  pa.pa_parsable = flags->parsable;
  pa.pa_estimate = B_FALSE;
  pa.pa_verbosity = flags->verbosity;

  err = pthread_create(&ptid, ((void*)0),
      send_progress_thread, &pa);
  if (err != 0) {
   zfs_error_aux(zhp->zfs_hdl, strerror(errno));
   if (flags->dedup) {
    (void) pthread_cancel(ddtid);
    (void) close(fd);
    (void) pthread_join(ddtid, ((void*)0));
   }
   return (zfs_error(zhp->zfs_hdl,
       EZFS_THREADCREATEFAILED, errbuf));
  }
 }

 err = lzc_send_redacted(zhp->zfs_name, from, fd,
     lzc_flags_from_sendflags(flags), redactbook);

 if (flags->progress) {
  void *status = ((void*)0);
  if (err != 0)
   (void) pthread_cancel(ptid);
  (void) pthread_join(ptid, &status);
  int error = (int)(uintptr_t)status;
  if (error != 0 && status != PTHREAD_CANCELED) {
   char errbuf[1024];
   (void) snprintf(errbuf, sizeof (errbuf),
       dgettext(TEXT_DOMAIN, "progress thread exited "
       "nonzero"));
   return (zfs_standard_error(hdl, error, errbuf));
  }
 }
 if (flags->dedup) {
  if (err != 0)
   (void) pthread_cancel(ddtid);
  (void) close(fd);
  (void) pthread_join(ddtid, ((void*)0));
 }

 if (flags->props || flags->holds || flags->backup) {

  err = send_conclusion_record(orig_fd, ((void*)0));
  if (err != 0)
   return (zfs_standard_error(hdl, err, errbuf));
 }
 if (err != 0) {
  switch (errno) {
  case 128:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "not an earlier snapshot from the same fs"));
   return (zfs_error(hdl, EZFS_CROSSTARGET, errbuf));

  case 137:
  case 129:
   if (lzc_exists(zhp->zfs_name)) {
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "incremental source (%s) does not exist"),
        from);
   }
   return (zfs_error(hdl, EZFS_NOENT, errbuf));

  case 143:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "dataset key must be loaded"));
   return (zfs_error(hdl, EZFS_CRYPTOFAILED, errbuf));

  case 142:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "target is busy; if a filesystem, "
       "it must not be mounted"));
   return (zfs_error(hdl, EZFS_BUSY, errbuf));

  case 141:
  case 139:
  case 138:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 140:
  case 130:
   zfs_error_aux(hdl, strerror(errno));
   return (zfs_error(hdl, EZFS_BADBACKUP, errbuf));

  default:
   return (zfs_standard_error(hdl, errno, errbuf));
  }
 }
 return (err != 0);
}
