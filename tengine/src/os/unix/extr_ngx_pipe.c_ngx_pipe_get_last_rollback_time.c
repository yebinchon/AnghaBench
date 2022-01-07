
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_ctime; } ;
struct flock {scalar_t__ l_len; scalar_t__ l_start; int l_whence; int l_type; } ;
struct TYPE_3__ {int last_open_time; int time_now; int interval; int * backup; int logname; } ;
typedef TYPE_1__ ngx_pipe_rollback_conf_t ;


 int F_SETLKW ;
 int F_WRLCK ;
 int NGX_FILE_OPEN ;
 int NGX_FILE_RDWR ;
 int SEEK_SET ;
 int close (int) ;
 int fcntl (int,int ,struct flock*) ;
 int ngx_file_info (int ,struct stat*) ;
 int ngx_open_file (int ,int ,int ,int ) ;
 int ngx_time () ;

void ngx_pipe_get_last_rollback_time(ngx_pipe_rollback_conf_t *rbcf)
{
    int fd;
    struct flock lock;
    int ret;

    struct stat sb;

    fd = ngx_open_file(rbcf->logname, NGX_FILE_RDWR, NGX_FILE_OPEN, 0);
    if (fd < 0) {

        rbcf->last_open_time = rbcf->time_now;
        return;
    }

    lock.l_type = F_WRLCK;
    lock.l_whence = SEEK_SET;
    lock.l_start = 0;
    lock.l_len = 0;

    ret = fcntl(fd, F_SETLKW, &lock);
    if (ret < 0) {
        close(fd);

        rbcf->last_open_time = rbcf->time_now;
        return;
    }


    if (rbcf->interval > 0) {
        if (ngx_file_info(rbcf->backup[0], &sb) == -1) {

            rbcf->last_open_time = 1;
        } else if (sb.st_ctime / rbcf->interval < ngx_time() / rbcf->interval) {

            rbcf->last_open_time = 1;
        } else {

            rbcf->last_open_time = rbcf->time_now;
        }
    } else {
        rbcf->last_open_time = rbcf->time_now;
    }

    close(fd);
}
