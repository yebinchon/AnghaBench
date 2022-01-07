
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char u_char ;
typedef int preface ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_v2_connection_t ;
struct TYPE_8__ {int log; } ;


 int NGX_HTTP_V2_PROTOCOL_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 char* ngx_http_v2_connection_error (TYPE_2__*,int ) ;
 char* ngx_http_v2_state_head (TYPE_2__*,char*,char*) ;
 char* ngx_http_v2_state_save (TYPE_2__*,char*,char*,char* (*) (TYPE_2__*,char*,char*)) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,char*) ;
 scalar_t__ ngx_memcmp (char*,char const*,int) ;

__attribute__((used)) static u_char *
ngx_http_v2_state_preface_end(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    static const u_char preface[] = "\r\nSM\r\n\r\n";

    if ((size_t) (end - pos) < sizeof(preface) - 1) {
        return ngx_http_v2_state_save(h2c, pos, end,
                                      ngx_http_v2_state_preface_end);
    }

    if (ngx_memcmp(pos, preface, sizeof(preface) - 1) != 0) {
        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                       "invalid http2 connection preface \"%*s\"",
                       sizeof(preface) - 1, pos);

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 preface verified");

    return ngx_http_v2_state_head(h2c, pos + sizeof(preface) - 1, end);
}
