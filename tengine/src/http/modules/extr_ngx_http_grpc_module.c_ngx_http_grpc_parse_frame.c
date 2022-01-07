
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int ngx_http_grpc_state_e ;
struct TYPE_10__ {int state; int rest; int type; int flags; int stream_id; int frame_state; } ;
typedef TYPE_3__ ngx_http_grpc_ctx_t ;
struct TYPE_11__ {int* pos; int* last; } ;
typedef TYPE_4__ ngx_buf_t ;
struct TYPE_8__ {int log; } ;


 int NGX_AGAIN ;
 int NGX_ERROR ;
 int NGX_HTTP_V2_DEFAULT_FRAME_SIZE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int,int,int,int) ;
 int ngx_log_error (int ,int ,int ,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_grpc_parse_frame(ngx_http_request_t *r, ngx_http_grpc_ctx_t *ctx,
    ngx_buf_t *b)
{
    u_char ch, *p;
    ngx_http_grpc_state_e state;

    state = ctx->state;

    for (p = b->pos; p < b->last; p++) {
        ch = *p;






        switch (state) {

        case 133:
            ctx->rest = ch << 16;
            state = 137;
            break;

        case 137:
            ctx->rest |= ch << 8;
            state = 136;
            break;

        case 136:
            ctx->rest |= ch;

            if (ctx->rest > NGX_HTTP_V2_DEFAULT_FRAME_SIZE) {
                ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                              "upstream sent too large http2 frame: %uz",
                              ctx->rest);
                return NGX_ERROR;
            }

            state = 128;
            break;

        case 128:
            ctx->type = ch;
            state = 138;
            break;

        case 138:
            ctx->flags = ch;
            state = 132;
            break;

        case 132:
            ctx->stream_id = (ch & 0x7f) << 24;
            state = 131;
            break;

        case 131:
            ctx->stream_id |= ch << 16;
            state = 130;
            break;

        case 130:
            ctx->stream_id |= ch << 8;
            state = 129;
            break;

        case 129:
            ctx->stream_id |= ch;

            ngx_log_debug4(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "grpc frame: %d, len: %uz, f:%d, i:%ui",
                           ctx->type, ctx->rest, ctx->flags, ctx->stream_id);

            b->pos = p + 1;

            ctx->state = 134;
            ctx->frame_state = 0;

            return NGX_OK;


        case 134:
        case 135:
            break;
        }
    }

    b->pos = p;
    ctx->state = state;

    return NGX_AGAIN;
}
