
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {int handler; int * stream; } ;
struct TYPE_8__ {TYPE_2__ state; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_v2_connection_t ;
struct TYPE_6__ {int log; } ;


 int NGX_HTTP_V2_INTERNAL_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_HTTP ;
 int * ngx_http_v2_connection_error (TYPE_3__*,int ) ;
 int ngx_http_v2_state_head ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int *) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static u_char *
ngx_http_v2_state_complete(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 frame complete pos:%p end:%p", pos, end);

    if (pos > end) {
        ngx_log_error(NGX_LOG_ALERT, h2c->connection->log, 0,
                      "receive buffer overrun");

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_INTERNAL_ERROR);
    }

    h2c->state.stream = ((void*)0);
    h2c->state.handler = ngx_http_v2_state_head;

    return pos;
}
