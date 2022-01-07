
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_4__ {int data; } ;
struct TYPE_5__ {scalar_t__ sys_offset; int offset; TYPE_1__ name; int log; int fd; } ;
typedef TYPE_2__ ngx_file_t ;


 int NGX_ERROR ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_CORE ;
 int SEEK_SET ;
 int lseek (int ,scalar_t__,int ) ;
 int ngx_errno ;
 int ngx_log_debug4 (int ,int ,int ,char*,int ,int *,size_t,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 int pread (int ,int *,size_t,scalar_t__) ;
 int read (int ,int *,size_t) ;

ssize_t
ngx_read_file(ngx_file_t *file, u_char *buf, size_t size, off_t offset)
{
    ssize_t n;

    ngx_log_debug4(NGX_LOG_DEBUG_CORE, file->log, 0,
                   "read: %d, %p, %uz, %O", file->fd, buf, size, offset);
    if (file->sys_offset != offset) {
        if (lseek(file->fd, offset, SEEK_SET) == -1) {
            ngx_log_error(NGX_LOG_CRIT, file->log, ngx_errno,
                          "lseek() \"%s\" failed", file->name.data);
            return NGX_ERROR;
        }

        file->sys_offset = offset;
    }

    n = read(file->fd, buf, size);

    if (n == -1) {
        ngx_log_error(NGX_LOG_CRIT, file->log, ngx_errno,
                      "read() \"%s\" failed", file->name.data);
        return NGX_ERROR;
    }

    file->sys_offset += n;



    file->offset += n;

    return n;
}
