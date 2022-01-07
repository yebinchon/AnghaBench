
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_10__ {void* client_abort; } ;
typedef TYPE_1__ ngx_http_tfs_t ;
struct TYPE_11__ {TYPE_4__* connection; int uri; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_12__ {int eof; scalar_t__ kq_errno; int error; int log; scalar_t__ write; scalar_t__ active; int pending_eof; } ;
typedef TYPE_3__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_13__ {int error; int fd; } ;
typedef TYPE_4__ ngx_connection_t ;


 int MSG_PEEK ;
 scalar_t__ NGX_EAGAIN ;
 void* NGX_HTTP_TFS_YES ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 int NGX_READ_EVENT ;
 int NGX_USE_KQUEUE_EVENT ;
 int NGX_USE_LEVEL_EVENT ;
 int NGX_WRITE_EVENT ;
 int ngx_del_event (TYPE_3__*,int ,int ) ;
 int ngx_event_flags ;
 TYPE_1__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_tfs_module ;
 int ngx_log_debug1 (int ,int ,scalar_t__,char*,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,scalar_t__,int *) ;
 int ngx_log_error (int ,int ,scalar_t__,char*) ;
 scalar_t__ ngx_socket_errno ;
 int recv (int ,char*,int,int ) ;

__attribute__((used)) static void
ngx_http_tfs_check_broken_connection(ngx_http_request_t *r,
    ngx_event_t *ev)
{
    int n;
    char buf[1];
    ngx_err_t err;
    ngx_int_t event;
    ngx_http_tfs_t *t;
    ngx_connection_t *c;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                   "http tfs check client, write event:%d, \"%V\"",
                   ev->write, &r->uri);

    c = r->connection;
    t = ngx_http_get_module_ctx(r, ngx_http_tfs_module);

    if (c->error) {
        if ((ngx_event_flags & NGX_USE_LEVEL_EVENT) && ev->active) {

            event = ev->write ? NGX_WRITE_EVENT : NGX_READ_EVENT;

            ngx_del_event(ev, event, 0);
        }

        t->client_abort = NGX_HTTP_TFS_YES;

        return;
    }
    n = recv(c->fd, buf, 1, MSG_PEEK);

    err = ngx_socket_errno;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ev->log, err,
                   "http tfs recv(): %d", n);

    if (ev->write && (n >= 0 || err == NGX_EAGAIN)) {
        return;
    }

    if ((ngx_event_flags & NGX_USE_LEVEL_EVENT) && ev->active) {

        event = ev->write ? NGX_WRITE_EVENT : NGX_READ_EVENT;

        ngx_del_event(ev, event, 0);
    }

    if (n > 0) {
        return;
    }

    if (n == -1) {
        if (err == NGX_EAGAIN) {
            return;
        }

        ev->error = 1;

    } else {
        err = 0;
    }

    ev->eof = 1;
    c->error = 1;

    ngx_log_error(NGX_LOG_INFO, ev->log, err,
                  "client prematurely closed connection");

    t->client_abort = NGX_HTTP_TFS_YES;
}
