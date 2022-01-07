
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef int ngx_http_v2_handler_pt ;
struct TYPE_12__ {size_t length; scalar_t__ sid; int handler; TYPE_3__* stream; int flags; scalar_t__ padding; } ;
struct TYPE_13__ {TYPE_4__ state; TYPE_1__* connection; } ;
typedef TYPE_5__ ngx_http_v2_connection_t ;
struct TYPE_11__ {TYPE_2__* request; } ;
struct TYPE_10__ {size_t request_length; } ;
struct TYPE_9__ {int log; } ;


 scalar_t__ NGX_HTTP_V2_CONTINUATION_FRAME ;
 size_t NGX_HTTP_V2_FRAME_HEADER_SIZE ;
 int NGX_HTTP_V2_PROTOCOL_ERROR ;
 int NGX_LOG_INFO ;
 int * ngx_http_v2_connection_error (TYPE_5__*,int ) ;
 size_t ngx_http_v2_parse_length (int ) ;
 scalar_t__ ngx_http_v2_parse_sid (int *) ;
 scalar_t__ ngx_http_v2_parse_type (int ) ;
 int ngx_http_v2_parse_uint32 (int *) ;
 int * ngx_http_v2_state_headers_save (TYPE_5__*,int *,int *,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memcpy (int *,int *,size_t) ;
 int ngx_memmove (int *,int *,size_t) ;
 size_t ngx_min (scalar_t__,int) ;

__attribute__((used)) static u_char *
ngx_http_v2_handle_continuation(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end, ngx_http_v2_handler_pt handler)
{
    u_char *p;
    size_t len, skip;
    uint32_t head;

    len = h2c->state.length;

    if (h2c->state.padding && (size_t) (end - pos) > len) {
        skip = ngx_min(h2c->state.padding, (end - pos) - len);

        h2c->state.padding -= skip;

        p = pos;
        pos += skip;
        ngx_memmove(pos, p, len);
    }

    if ((size_t) (end - pos) < len + NGX_HTTP_V2_FRAME_HEADER_SIZE) {
        return ngx_http_v2_state_headers_save(h2c, pos, end, handler);
    }

    p = pos + len;

    head = ngx_http_v2_parse_uint32(p);

    if (ngx_http_v2_parse_type(head) != NGX_HTTP_V2_CONTINUATION_FRAME) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
             "client sent inappropriate frame while CONTINUATION was expected");

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    h2c->state.flags |= p[4];

    if (h2c->state.sid != ngx_http_v2_parse_sid(&p[5])) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                    "client sent CONTINUATION frame with incorrect identifier");

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    p = pos;
    pos += NGX_HTTP_V2_FRAME_HEADER_SIZE;

    ngx_memcpy(pos, p, len);

    len = ngx_http_v2_parse_length(head);

    h2c->state.length += len;

    if (h2c->state.stream) {
        h2c->state.stream->request->request_length += len;
    }

    h2c->state.handler = handler;
    return pos;
}
