
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int ssize_t ;
typedef int off_t ;
struct TYPE_4__ {int data; } ;
struct TYPE_5__ {int offset; int sys_offset; TYPE_1__ name; int log; int fd; } ;
typedef TYPE_2__ ngx_file_t ;
typedef scalar_t__ ngx_err_t ;


 scalar_t__ NGX_EINTR ;
 int NGX_ERROR ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_CORE ;
 int SEEK_SET ;
 int lseek (int ,int,int ) ;
 scalar_t__ ngx_errno ;
 int ngx_log_debug0 (int ,int ,scalar_t__,char*) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int ,int *,size_t,int) ;
 int ngx_log_error (int ,int ,scalar_t__,char*,int ) ;
 int pwrite (int ,int *,size_t,int) ;
 int write (int ,int *,size_t) ;

ssize_t
ngx_write_file(ngx_file_t *file, u_char *buf, size_t size, off_t offset)
{
    ssize_t n, written;
    ngx_err_t err;

    ngx_log_debug4(NGX_LOG_DEBUG_CORE, file->log, 0,
                   "write: %d, %p, %uz, %O", file->fd, buf, size, offset);

    written = 0;
    if (file->sys_offset != offset) {
        if (lseek(file->fd, offset, SEEK_SET) == -1) {
            ngx_log_error(NGX_LOG_CRIT, file->log, ngx_errno,
                          "lseek() \"%s\" failed", file->name.data);
            return NGX_ERROR;
        }

        file->sys_offset = offset;
    }

    for ( ;; ) {
        n = write(file->fd, buf + written, size);

        if (n == -1) {
            err = ngx_errno;

            if (err == NGX_EINTR) {
                ngx_log_debug0(NGX_LOG_DEBUG_CORE, file->log, err,
                               "write() was interrupted");
                continue;
            }

            ngx_log_error(NGX_LOG_CRIT, file->log, err,
                          "write() \"%s\" failed", file->name.data);
            return NGX_ERROR;
        }

        file->sys_offset += n;
        file->offset += n;
        written += n;

        if ((size_t) n == size) {
            return written;
        }

        size -= n;
    }

}
