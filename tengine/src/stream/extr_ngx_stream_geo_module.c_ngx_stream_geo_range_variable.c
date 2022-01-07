
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
struct in6_addr {int* s6_addr; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct TYPE_15__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
typedef int ngx_uint_t ;
typedef int ngx_stream_variable_value_t ;
struct TYPE_19__ {TYPE_5__* connection; } ;
typedef TYPE_6__ ngx_stream_session_t ;
struct TYPE_20__ {int * value; scalar_t__ end; scalar_t__ start; } ;
typedef TYPE_7__ ngx_stream_geo_range_t ;
struct TYPE_16__ {TYPE_7__** low; int * default_value; } ;
struct TYPE_17__ {TYPE_3__ high; } ;
struct TYPE_21__ {TYPE_4__ u; } ;
typedef TYPE_8__ ngx_stream_geo_ctx_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_22__ {TYPE_1__* sockaddr; } ;
typedef TYPE_9__ ngx_addr_t ;
typedef int in_addr_t ;
struct TYPE_18__ {int log; } ;
struct TYPE_14__ {int sa_family; } ;




 int IN6_IS_ADDR_V4MAPPED (struct in6_addr*) ;
 int INADDR_NONE ;
 int NGX_LOG_DEBUG_STREAM ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;
 scalar_t__ ngx_stream_geo_addr (TYPE_6__*,TYPE_8__*,TYPE_9__*) ;
 int ntohl (int ) ;

__attribute__((used)) static ngx_int_t
ngx_stream_geo_range_variable(ngx_stream_session_t *s,
    ngx_stream_variable_value_t *v, uintptr_t data)
{
    ngx_stream_geo_ctx_t *ctx = (ngx_stream_geo_ctx_t *) data;

    in_addr_t inaddr;
    ngx_addr_t addr;
    ngx_uint_t n;
    struct sockaddr_in *sin;
    ngx_stream_geo_range_t *range;





    *v = *ctx->u.high.default_value;

    if (ngx_stream_geo_addr(s, ctx, &addr) == NGX_OK) {

        switch (addr.sockaddr->sa_family) {
        default:
            sin = (struct sockaddr_in *) addr.sockaddr;
            inaddr = ntohl(sin->sin_addr.s_addr);
            break;
        }

    } else {
        inaddr = INADDR_NONE;
    }

    if (ctx->u.high.low) {
        range = ctx->u.high.low[inaddr >> 16];

        if (range) {
            n = inaddr & 0xffff;
            do {
                if (n >= (ngx_uint_t) range->start
                    && n <= (ngx_uint_t) range->end)
                {
                    *v = *range->value;
                    break;
                }
            } while ((++range)->value);
        }
    }

    ngx_log_debug1(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                   "stream geo: %v", v);

    return NGX_OK;
}
