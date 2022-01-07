
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_7__ {scalar_t__ stream; TYPE_3__* connection; int uri; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_8__ {int eof; scalar_t__ kq_errno; int error; int log; scalar_t__ write; scalar_t__ active; int pending_eof; } ;
typedef TYPE_2__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_9__ {int fd; scalar_t__ error; } ;
typedef TYPE_3__ ngx_connection_t ;


 int MSG_PEEK ;
 scalar_t__ NGX_EAGAIN ;
 scalar_t__ NGX_HTTP_CLIENT_CLOSED_REQUEST ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 scalar_t__ NGX_READ_EVENT ;
 int NGX_USE_KQUEUE_EVENT ;
 int NGX_USE_LEVEL_EVENT ;
 scalar_t__ NGX_WRITE_EVENT ;
 int dd (char*,...) ;
 scalar_t__ ngx_del_event (TYPE_2__*,scalar_t__,int ) ;
 int ngx_event_flags ;
 int ngx_log_debug1 (int ,int ,scalar_t__,char*,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,scalar_t__,int *) ;
 int ngx_log_error (int ,int ,scalar_t__,char*) ;
 scalar_t__ ngx_socket_errno ;
 int recv (int ,char*,int,int ) ;

ngx_int_t
ngx_http_lua_check_broken_connection(ngx_http_request_t *r, ngx_event_t *ev)
{
    int n;
    char buf[1];
    ngx_err_t err;
    ngx_int_t event;
    ngx_connection_t *c;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                   "http lua check client, write event:%d, \"%V\"",
                   ev->write, &r->uri);

    c = r->connection;

    if (c->error) {
        if ((ngx_event_flags & NGX_USE_LEVEL_EVENT) && ev->active) {

            event = ev->write ? NGX_WRITE_EVENT : NGX_READ_EVENT;

            if (ngx_del_event(ev, event, 0) != NGX_OK) {
                return NGX_HTTP_INTERNAL_SERVER_ERROR;
            }
        }

        return NGX_HTTP_CLIENT_CLOSED_REQUEST;
    }
    n = recv(c->fd, buf, 1, MSG_PEEK);

    err = ngx_socket_errno;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ev->log, err,
                   "http lua recv(): %d", n);

    if (ev->write && (n >= 0 || err == NGX_EAGAIN)) {
        return NGX_OK;
    }

    if ((ngx_event_flags & NGX_USE_LEVEL_EVENT) && ev->active) {
        dd("event is active");

        event = ev->write ? NGX_WRITE_EVENT : NGX_READ_EVENT;


        if (ngx_del_event(ev, event, 0) != NGX_OK) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

    }

    dd("HERE %d", (int) n);

    if (n > 0) {
        return NGX_OK;
    }

    if (n == -1) {
        if (err == NGX_EAGAIN) {
            dd("HERE");
            return NGX_OK;
        }

        ev->error = 1;

    } else {
        err = 0;
    }

    ev->eof = 1;

    ngx_log_error(NGX_LOG_INFO, ev->log, err,
                  "client prematurely closed connection");

    return NGX_HTTP_CLIENT_CLOSED_REQUEST;
}
