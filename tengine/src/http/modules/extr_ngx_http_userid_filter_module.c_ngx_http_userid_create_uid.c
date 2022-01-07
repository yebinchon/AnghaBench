
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct TYPE_17__ {int * s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_19__ {int s_addr; } ;
struct sockaddr_in {TYPE_4__ sin_addr; } ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_20__ {int len; int * data; scalar_t__ not_found; } ;
typedef TYPE_5__ ngx_http_variable_value_t ;
struct TYPE_16__ {int len; char* data; } ;
struct TYPE_21__ {scalar_t__* uid_set; scalar_t__* uid_got; int reset; TYPE_1__ cookie; } ;
typedef TYPE_6__ ngx_http_userid_ctx_t ;
struct TYPE_22__ {char mark; scalar_t__ enable; scalar_t__ service; int name; } ;
typedef TYPE_7__ ngx_http_userid_conf_t ;
struct TYPE_23__ {TYPE_9__* connection; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_24__ {TYPE_3__* local_sockaddr; int log; } ;
typedef TYPE_9__ ngx_connection_t ;
struct TYPE_18__ {int sa_family; } ;




 scalar_t__ NGX_CONF_UNSET ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_USERID_V1 ;
 int NGX_LOG_NOTICE ;
 scalar_t__ NGX_OK ;
 void* htonl (int) ;
 scalar_t__ ngx_connection_local_sockaddr (TYPE_9__*,int *,int ) ;
 TYPE_5__* ngx_http_get_indexed_variable (TYPE_8__*,int ) ;
 int ngx_http_userid_reset_index ;
 int ngx_log_error (int ,int ,int ,char*,int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ ngx_strncmp (int *,char*,int) ;
 scalar_t__ ngx_time () ;
 int sequencer_v1 ;
 int sequencer_v2 ;
 int start_value ;

__attribute__((used)) static ngx_int_t
ngx_http_userid_create_uid(ngx_http_request_t *r, ngx_http_userid_ctx_t *ctx,
    ngx_http_userid_conf_t *conf)
{
    ngx_connection_t *c;
    struct sockaddr_in *sin;
    ngx_http_variable_value_t *vv;





    if (ctx->uid_set[3] != 0) {
        return NGX_OK;
    }

    if (ctx->uid_got[3] != 0) {

        vv = ngx_http_get_indexed_variable(r, ngx_http_userid_reset_index);

        if (vv == ((void*)0) || vv->not_found) {
            return NGX_ERROR;
        }

        if (vv->len == 0 || (vv->len == 1 && vv->data[0] == '0')) {

            if (conf->mark == '\0'
                || (ctx->cookie.len > 23
                    && ctx->cookie.data[22] == conf->mark
                    && ctx->cookie.data[23] == '='))
            {
                return NGX_OK;
            }

            ctx->uid_set[0] = ctx->uid_got[0];
            ctx->uid_set[1] = ctx->uid_got[1];
            ctx->uid_set[2] = ctx->uid_got[2];
            ctx->uid_set[3] = ctx->uid_got[3];

            return NGX_OK;

        } else {
            ctx->reset = 1;

            if (vv->len == 3 && ngx_strncmp(vv->data, "log", 3) == 0) {
                ngx_log_error(NGX_LOG_NOTICE, r->connection->log, 0,
                        "userid cookie \"%V=%08XD%08XD%08XD%08XD\" was reset",
                        &conf->name, ctx->uid_got[0], ctx->uid_got[1],
                        ctx->uid_got[2], ctx->uid_got[3]);
            }
        }
    }






    if (conf->enable == NGX_HTTP_USERID_V1) {
        if (conf->service == NGX_CONF_UNSET) {
            ctx->uid_set[0] = 0;
        } else {
            ctx->uid_set[0] = conf->service;
        }
        ctx->uid_set[1] = (uint32_t) ngx_time();
        ctx->uid_set[2] = start_value;
        ctx->uid_set[3] = sequencer_v1;
        sequencer_v1 += 0x100;

    } else {
        if (conf->service == NGX_CONF_UNSET) {

            c = r->connection;

            if (ngx_connection_local_sockaddr(c, ((void*)0), 0) != NGX_OK) {
                return NGX_ERROR;
            }

            switch (c->local_sockaddr->sa_family) {
            default:
                sin = (struct sockaddr_in *) c->local_sockaddr;
                ctx->uid_set[0] = sin->sin_addr.s_addr;
                break;
            }

        } else {
            ctx->uid_set[0] = htonl(conf->service);
        }

        ctx->uid_set[1] = htonl((uint32_t) ngx_time());
        ctx->uid_set[2] = htonl(start_value);
        ctx->uid_set[3] = htonl(sequencer_v2);
        sequencer_v2 += 0x100;
        if (sequencer_v2 < 0x03030302) {
            sequencer_v2 = 0x03030302;
        }
    }

    return NGX_OK;
}
