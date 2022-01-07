
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zfs_hdl; int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int pthread_t ;
typedef int errbuf ;
struct TYPE_7__ {int outputfd; int inputfd; int dedup_hdl; } ;
typedef TYPE_2__ dedup_arg_t ;


 int AF_UNIX ;
 int EZFS_PIPEFAILED ;
 int EZFS_THREADCREATEFAILED ;
 int SOCK_STREAM ;
 int TEXT_DOMAIN ;
 int cksummer ;
 int close (int) ;
 char* dgettext (int ,char*) ;
 int errno ;
 int pthread_create (int *,int *,int ,TYPE_2__*) ;
 int snprintf (char*,int,char*,int ) ;
 int socketpair (int ,int ,int ,int*) ;
 int strerror (int) ;
 int zfs_error (int ,int ,char*) ;
 int zfs_error_aux (int ,int ) ;

__attribute__((used)) static int
get_dedup_fd(zfs_handle_t *zhp, dedup_arg_t *dda, int fd, pthread_t *tid,
    int *outfd)
{
 int pipefd[2];
 char errbuf[1024];
 int err;
 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "warning: cannot send '%s'"), zhp->zfs_name);
 if ((err = socketpair(AF_UNIX, SOCK_STREAM, 0, pipefd)) != 0) {
  zfs_error_aux(zhp->zfs_hdl, strerror(errno));
  return (zfs_error(zhp->zfs_hdl, EZFS_PIPEFAILED,
      errbuf));
 }
 dda->outputfd = fd;
 dda->inputfd = pipefd[1];
 dda->dedup_hdl = zhp->zfs_hdl;
 if ((err = pthread_create(tid, ((void*)0), cksummer, dda)) != 0) {
  (void) close(pipefd[0]);
  (void) close(pipefd[1]);
  zfs_error_aux(zhp->zfs_hdl, strerror(err));
  return (zfs_error(zhp->zfs_hdl, EZFS_THREADCREATEFAILED,
      errbuf));
 }
 *outfd = pipefd[0];
 return (0);
}
