
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_10__ {scalar_t__ signo; } ;
typedef TYPE_3__ ngx_rtsig_conf_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {TYPE_2__* write; TYPE_1__* read; int log; int fd; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_12__ {int conf_ctx; } ;
struct TYPE_9__ {int active; } ;
struct TYPE_8__ {int active; scalar_t__ instance; scalar_t__ disabled; scalar_t__ accept; } ;


 int F_SETAUXFL ;
 int F_SETFL ;
 int F_SETOWN ;
 int F_SETSIG ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_OK ;
 int O_ASYNC ;
 int O_NONBLOCK ;
 int O_ONESIGFD ;
 int O_RDWR ;
 int fcntl (int ,int ,int) ;
 TYPE_7__* ngx_cycle ;
 int ngx_errno ;
 TYPE_3__* ngx_event_get_conf (int ,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_pid ;
 int ngx_rtsig_module ;

__attribute__((used)) static ngx_int_t
ngx_rtsig_add_connection(ngx_connection_t *c)
{
    ngx_uint_t signo;
    ngx_rtsig_conf_t *rtscf;

    if (c->read->accept && c->read->disabled) {

        ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "rtsig enable connection: fd:%d", c->fd);

        if (fcntl(c->fd, F_SETOWN, ngx_pid) == -1) {
            ngx_log_error(NGX_LOG_ALERT, c->log, ngx_errno,
                          "fcntl(F_SETOWN) failed");
            return NGX_ERROR;
        }

        c->read->active = 1;
        c->read->disabled = 0;
    }

    rtscf = ngx_event_get_conf(ngx_cycle->conf_ctx, ngx_rtsig_module);

    signo = rtscf->signo + c->read->instance;

    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "rtsig add connection: fd:%d signo:%ui", c->fd, signo);

    if (fcntl(c->fd, F_SETFL, O_RDWR|O_NONBLOCK|O_ASYNC) == -1) {
        ngx_log_error(NGX_LOG_ALERT, c->log, ngx_errno,
                      "fcntl(O_RDWR|O_NONBLOCK|O_ASYNC) failed");
        return NGX_ERROR;
    }

    if (fcntl(c->fd, F_SETSIG, (int) signo) == -1) {
        ngx_log_error(NGX_LOG_ALERT, c->log, ngx_errno,
                      "fcntl(F_SETSIG) failed");
        return NGX_ERROR;
    }

    if (fcntl(c->fd, F_SETOWN, ngx_pid) == -1) {
        ngx_log_error(NGX_LOG_ALERT, c->log, ngx_errno,
                      "fcntl(F_SETOWN) failed");
        return NGX_ERROR;
    }
    c->read->active = 1;
    c->write->active = 1;

    return NGX_OK;
}
