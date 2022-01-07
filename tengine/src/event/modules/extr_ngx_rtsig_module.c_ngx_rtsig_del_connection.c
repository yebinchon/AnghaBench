
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {TYPE_2__* write; TYPE_1__* read; int log; int fd; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_6__ {scalar_t__ active; } ;
struct TYPE_5__ {int disabled; scalar_t__ active; scalar_t__ accept; } ;


 int F_SETFL ;
 int NGX_CLOSE_EVENT ;
 int NGX_DISABLE_EVENT ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_OK ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int fcntl (int ,int ,int) ;
 int ngx_errno ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_rtsig_del_connection(ngx_connection_t *c, ngx_uint_t flags)
{
    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "rtsig del connection: fd:%d", c->fd);

    if ((flags & NGX_DISABLE_EVENT) && c->read->accept) {

        ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "rtsig disable connection: fd:%d", c->fd);

        c->read->active = 0;
        c->read->disabled = 1;
        return NGX_OK;
    }

    if (flags & NGX_CLOSE_EVENT) {
        c->read->active = 0;
        c->write->active = 0;
        return NGX_OK;
    }

    if (fcntl(c->fd, F_SETFL, O_RDWR|O_NONBLOCK) == -1) {
        ngx_log_error(NGX_LOG_ALERT, c->log, ngx_errno,
                      "fcntl(O_RDWR|O_NONBLOCK) failed");
        return NGX_ERROR;
    }

    c->read->active = 0;
    c->write->active = 0;

    return NGX_OK;
}
