
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instance {int pidfile; int pid_filename; int pid; } ;
typedef scalar_t__ ssize_t ;
typedef int rstatus_t ;


 int NC_ERROR ;
 int NC_OK ;
 int NC_UINTMAX_MAXLEN ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int log_error (char*,int ,int ) ;
 int nc_snprintf (char*,int,char*,int ) ;
 scalar_t__ nc_write (int,char*,int) ;
 int open (int ,int,int) ;
 int strerror (int ) ;

__attribute__((used)) static rstatus_t
nc_create_pidfile(struct instance *nci)
{
    char pid[NC_UINTMAX_MAXLEN];
    int fd, pid_len;
    ssize_t n;

    fd = open(nci->pid_filename, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd < 0) {
        log_error("opening pid file '%s' failed: %s", nci->pid_filename,
                  strerror(errno));
        return NC_ERROR;
    }
    nci->pidfile = 1;

    pid_len = nc_snprintf(pid, NC_UINTMAX_MAXLEN, "%d", nci->pid);

    n = nc_write(fd, pid, pid_len);
    if (n < 0) {
        log_error("write to pid file '%s' failed: %s", nci->pid_filename,
                  strerror(errno));
        return NC_ERROR;
    }

    close(fd);

    return NC_OK;
}
