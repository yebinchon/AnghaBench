
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zfs_name; int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_9__ {int parsable; scalar_t__ progress; int verbosity; scalar_t__ dryrun; } ;
typedef TYPE_2__ sendflags_t ;
typedef int pthread_t ;
struct TYPE_10__ {int pa_fd; int pa_verbosity; int pa_estimate; int pa_parsable; TYPE_1__* pa_zhp; int member_0; } ;
typedef TYPE_3__ progress_arg_t ;
typedef char* longlong_t ;
typedef int errbuf ;
typedef int buf ;
typedef int FILE ;


 int B_TRUE ;
 int EZFS_BADBACKUP ;
 int EZFS_THREADCREATEFAILED ;
 void* PTHREAD_CANCELED ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int errno ;
 int fprintf (int *,char*,char*) ;
 int lzc_flags_from_sendflags (TYPE_2__*) ;
 int lzc_send_space_resume_redacted (int ,char const*,int ,scalar_t__,scalar_t__,scalar_t__,char const*,int,scalar_t__*) ;
 int pthread_cancel (int ) ;
 int pthread_create (int *,int *,int ,TYPE_3__*) ;
 int pthread_join (int ,void**) ;
 int send_print_verbose (int *,int ,char const*,scalar_t__,int ) ;
 int send_progress_thread ;
 int snprintf (char*,int,char*) ;
 int * stderr ;
 int * stdout ;
 int strerror (int) ;
 int zfs_error (int ,int ,char*) ;
 int zfs_error_aux (int ,int ) ;
 int zfs_nicenum (scalar_t__,char*,int) ;
 int zfs_standard_error (int ,int,char*) ;

__attribute__((used)) static int
estimate_size(zfs_handle_t *zhp, const char *from, int fd, sendflags_t *flags,
    uint64_t resumeobj, uint64_t resumeoff, uint64_t bytes,
    const char *redactbook, char *errbuf)
{
 uint64_t size;
 FILE *fout = flags->dryrun ? stdout : stderr;
 progress_arg_t pa = { 0 };
 int err = 0;
 pthread_t ptid;

 if (flags->progress) {
  pa.pa_zhp = zhp;
  pa.pa_fd = fd;
  pa.pa_parsable = flags->parsable;
  pa.pa_estimate = B_TRUE;
  pa.pa_verbosity = flags->verbosity;

  err = pthread_create(&ptid, ((void*)0),
      send_progress_thread, &pa);
  if (err != 0) {
   zfs_error_aux(zhp->zfs_hdl, strerror(errno));
   return (zfs_error(zhp->zfs_hdl,
       EZFS_THREADCREATEFAILED, errbuf));
  }
 }

 err = lzc_send_space_resume_redacted(zhp->zfs_name, from,
     lzc_flags_from_sendflags(flags), resumeobj, resumeoff, bytes,
     redactbook, fd, &size);

 if (flags->progress) {
  void *status = ((void*)0);
  (void) pthread_cancel(ptid);
  (void) pthread_join(ptid, &status);
  int error = (int)(uintptr_t)status;
  if (error != 0 && status != PTHREAD_CANCELED) {
   char errbuf[1024];
   (void) snprintf(errbuf, sizeof (errbuf),
       dgettext(TEXT_DOMAIN, "progress thread exited "
       "nonzero"));
   return (zfs_standard_error(zhp->zfs_hdl, error,
       errbuf));
  }
 }

 if (err != 0) {
  zfs_error_aux(zhp->zfs_hdl, strerror(err));
  return (zfs_error(zhp->zfs_hdl, EZFS_BADBACKUP,
      errbuf));
 }
 send_print_verbose(fout, zhp->zfs_name, from, size,
     flags->parsable);

 if (flags->parsable) {
  (void) fprintf(fout, "size\t%llu\n", (longlong_t)size);
 } else {
  char buf[16];
  zfs_nicenum(size, buf, sizeof (buf));
  (void) fprintf(fout, dgettext(TEXT_DOMAIN,
      "total estimated size is %s\n"), buf);
 }
 return (0);
}
