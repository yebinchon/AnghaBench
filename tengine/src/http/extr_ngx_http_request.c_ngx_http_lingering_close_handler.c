
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
typedef int ngx_msec_t ;
typedef scalar_t__ ngx_msec_int_t ;
struct TYPE_12__ {scalar_t__ lingering_time; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_13__ {int lingering_timeout; } ;
typedef TYPE_2__ ngx_http_core_loc_conf_t ;
struct TYPE_14__ {scalar_t__ ready; scalar_t__ timedout; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_15__ {scalar_t__ (* recv ) (TYPE_4__*,int *,int) ;int received; int log; TYPE_1__* data; } ;
typedef TYPE_4__ ngx_connection_t ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LINGERING_BUFFER_SIZE ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_3__*,int) ;
 scalar_t__ ngx_handle_read_event (TYPE_3__*,int ) ;
 int ngx_http_close_request (TYPE_1__*,int ) ;
 int ngx_http_core_module ;
 TYPE_2__* ngx_http_get_module_loc_conf (TYPE_1__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 scalar_t__ ngx_time () ;
 scalar_t__ stub1 (TYPE_4__*,int *,int) ;

__attribute__((used)) static void
ngx_http_lingering_close_handler(ngx_event_t *rev)
{
    ssize_t n;
    ngx_msec_t timer;
    ngx_connection_t *c;
    ngx_http_request_t *r;
    ngx_http_core_loc_conf_t *clcf;
    u_char buffer[NGX_HTTP_LINGERING_BUFFER_SIZE];

    c = rev->data;
    r = c->data;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http lingering close handler");

    if (rev->timedout) {
        ngx_http_close_request(r, 0);
        return;
    }

    timer = (ngx_msec_t) r->lingering_time - (ngx_msec_t) ngx_time();
    if ((ngx_msec_int_t) timer <= 0) {
        ngx_http_close_request(r, 0);
        return;
    }

    do {
        n = c->recv(c, buffer, NGX_HTTP_LINGERING_BUFFER_SIZE);

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, c->log, 0, "lingering read: %z", n);

        if (n == NGX_AGAIN) {
            break;
        }

        if (n == NGX_ERROR || n == 0) {
            ngx_http_close_request(r, 0);
            return;
        }





    } while (rev->ready);

    if (ngx_handle_read_event(rev, 0) != NGX_OK) {
        ngx_http_close_request(r, 0);
        return;
    }

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    timer *= 1000;

    if (timer > clcf->lingering_timeout) {
        timer = clcf->lingering_timeout;
    }

    ngx_add_timer(rev, timer);
}
