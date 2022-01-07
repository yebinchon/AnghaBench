
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {int log; TYPE_2__* data; scalar_t__ timedout; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_12__ {scalar_t__ num_async_fds; scalar_t__ async_enable; int fd; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_13__ {scalar_t__ command; size_t slot; int fd; int pid; } ;
typedef TYPE_3__ ngx_channel_t ;
struct TYPE_14__ {int* channel; int pid; } ;


 scalar_t__ NGX_AGAIN ;






 int NGX_DISABLE_EVENT ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_READ_EVENT ;
 int NGX_USE_EPOLL_EVENT ;
 int NGX_USE_EVENTPORT_EVENT ;
 int close (int) ;
 scalar_t__ ngx_add_event (TYPE_1__*,int ,int ) ;
 int ngx_close_connection (TYPE_2__*) ;
 int ngx_del_async_conn (TYPE_2__*,int ) ;
 int ngx_del_conn (TYPE_2__*,int ) ;
 int ngx_errno ;
 int ngx_event_flags ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_debug3 (int ,int ,int ,char*,size_t,int ,int) ;
 int ngx_log_debug4 (int ,int ,int ,char*,size_t,int ,int ,int) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_pipe_broken_action (int ,int ,int ) ;
 TYPE_5__* ngx_processes ;
 int ngx_quit ;
 scalar_t__ ngx_read_channel (int ,TYPE_3__*,int,int ) ;
 int ngx_reopen ;
 int ngx_terminate ;

__attribute__((used)) static void
ngx_channel_handler(ngx_event_t *ev)
{
    ngx_int_t n;
    ngx_channel_t ch;
    ngx_connection_t *c;

    if (ev->timedout) {
        ev->timedout = 0;
        return;
    }

    c = ev->data;

    ngx_log_debug0(NGX_LOG_DEBUG_CORE, ev->log, 0, "channel handler");

    for ( ;; ) {

        n = ngx_read_channel(c->fd, &ch, sizeof(ngx_channel_t), ev->log);

        ngx_log_debug1(NGX_LOG_DEBUG_CORE, ev->log, 0, "channel: %i", n);

        if (n == NGX_ERROR) {

            if (ngx_event_flags & NGX_USE_EPOLL_EVENT) {
                ngx_del_conn(c, 0);
            }

            ngx_close_connection(c);
            return;
        }

        if (ngx_event_flags & NGX_USE_EVENTPORT_EVENT) {
            if (ngx_add_event(ev, NGX_READ_EVENT, 0) == NGX_ERROR) {
                return;
            }
        }

        if (n == NGX_AGAIN) {
            return;
        }

        ngx_log_debug1(NGX_LOG_DEBUG_CORE, ev->log, 0,
                       "channel command: %ui", ch.command);

        switch (ch.command) {

        case 130:
            ngx_quit = 1;
            break;

        case 128:
            ngx_terminate = 1;
            break;

        case 129:
            ngx_reopen = 1;
            break;

        case 132:

            ngx_log_debug3(NGX_LOG_DEBUG_CORE, ev->log, 0,
                           "get channel s:%i pid:%P fd:%d",
                           ch.slot, ch.pid, ch.fd);

            ngx_processes[ch.slot].pid = ch.pid;
            ngx_processes[ch.slot].channel[0] = ch.fd;
            break;

        case 133:

            ngx_log_debug4(NGX_LOG_DEBUG_CORE, ev->log, 0,
                           "close channel s:%i pid:%P our:%P fd:%d",
                           ch.slot, ch.pid, ngx_processes[ch.slot].pid,
                           ngx_processes[ch.slot].channel[0]);

            if (close(ngx_processes[ch.slot].channel[0]) == -1) {
                ngx_log_error(NGX_LOG_ALERT, ev->log, ngx_errno,
                              "close() channel failed");
            }

            ngx_processes[ch.slot].channel[0] = -1;
            break;






        }
    }
}
