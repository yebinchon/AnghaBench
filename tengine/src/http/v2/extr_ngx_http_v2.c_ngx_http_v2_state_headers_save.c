
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_http_v2_handler_pt ;
struct TYPE_14__ {TYPE_1__* stream; } ;
struct TYPE_16__ {TYPE_2__ state; } ;
typedef TYPE_4__ ngx_http_v2_connection_t ;
struct TYPE_17__ {TYPE_3__* connection; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_18__ {int client_header_timeout; } ;
typedef TYPE_6__ ngx_http_core_srv_conf_t ;
struct TYPE_19__ {int timer_set; } ;
typedef TYPE_7__ ngx_event_t ;
struct TYPE_15__ {TYPE_7__* read; } ;
struct TYPE_13__ {TYPE_5__* request; } ;


 int ngx_add_timer (TYPE_7__*,int ) ;
 int ngx_http_core_module ;
 TYPE_6__* ngx_http_get_module_srv_conf (TYPE_5__*,int ) ;
 int * ngx_http_v2_state_save (TYPE_4__*,int *,int *,int ) ;

__attribute__((used)) static u_char *
ngx_http_v2_state_headers_save(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end, ngx_http_v2_handler_pt handler)
{
    ngx_event_t *rev;
    ngx_http_request_t *r;
    ngx_http_core_srv_conf_t *cscf;

    if (h2c->state.stream) {
        r = h2c->state.stream->request;
        rev = r->connection->read;

        if (!rev->timer_set) {
            cscf = ngx_http_get_module_srv_conf(r, ngx_http_core_module);
            ngx_add_timer(rev, cscf->client_header_timeout);
        }
    }

    return ngx_http_v2_state_save(h2c, pos, end, handler);
}
