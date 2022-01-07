
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_4__ {scalar_t__ log_error; int tcp_nodelay; int fd; int log; } ;
typedef TYPE_1__ ngx_connection_t ;


 int IPPROTO_TCP ;
 int NGX_ERROR ;
 scalar_t__ NGX_ERROR_IGNORE_EINVAL ;
 scalar_t__ NGX_ERROR_INFO ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_OK ;
 int NGX_TCP_NODELAY_SET ;
 int NGX_TCP_NODELAY_UNSET ;
 int TCP_NODELAY ;
 int ngx_connection_error (TYPE_1__*,int ,char*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_socket_errno ;
 int setsockopt (int ,int ,int ,void const*,int) ;

ngx_int_t
ngx_tcp_nodelay(ngx_connection_t *c)
{
    int tcp_nodelay;

    if (c->tcp_nodelay != NGX_TCP_NODELAY_UNSET) {
        return NGX_OK;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_CORE, c->log, 0, "tcp_nodelay");

    tcp_nodelay = 1;

    if (setsockopt(c->fd, IPPROTO_TCP, TCP_NODELAY,
                   (const void *) &tcp_nodelay, sizeof(int))
        == -1)
    {
        ngx_connection_error(c, ngx_socket_errno,
                             "setsockopt(TCP_NODELAY) failed");
        return NGX_ERROR;
    }

    c->tcp_nodelay = NGX_TCP_NODELAY_SET;

    return NGX_OK;
}
