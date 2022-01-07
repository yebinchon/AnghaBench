
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_int_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_3__ {int fd; int log; } ;
typedef TYPE_1__ ngx_connection_t ;


 int MSG_PEEK ;
 scalar_t__ NGX_EAGAIN ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_log_debug2 (int ,int ,scalar_t__,char*,int,int ) ;
 scalar_t__ ngx_socket_errno ;
 int recv (int ,char*,int,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_peek_one_byte(ngx_connection_t *c)
{
    char buf[1];
    ngx_int_t n;
    ngx_err_t err;

    n = recv(c->fd, buf, 1, MSG_PEEK);
    err = ngx_socket_errno;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, err,
                   "http check upstream recv(): %i, fd: %d",
                   n, c->fd);

    if (n == 1 || (n == -1 && err == NGX_EAGAIN)) {
        return NGX_OK;
    } else {
        return NGX_ERROR;
    }
}
