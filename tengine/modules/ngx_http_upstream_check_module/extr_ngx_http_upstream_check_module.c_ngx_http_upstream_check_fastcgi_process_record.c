
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int state; int length; size_t padding; } ;
typedef TYPE_1__ ngx_http_upstream_check_ctx_t ;
struct TYPE_9__ {int code; } ;
typedef TYPE_2__ ngx_http_status_t ;
typedef int ngx_http_fastcgi_state_e ;
struct TYPE_10__ {int* pos; int* last; } ;
typedef TYPE_3__ ngx_buf_t ;
struct TYPE_11__ {int log; } ;


 int NGX_AGAIN ;
 int NGX_ERROR ;



 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 TYPE_7__* ngx_cycle ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_error (int ,int ,int ,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_fastcgi_process_record(
    ngx_http_upstream_check_ctx_t *ctx, ngx_buf_t *b, ngx_http_status_t *status)
{
    u_char ch, *p;
    ngx_http_fastcgi_state_e state;

    state = ctx->state;

    for (p = b->pos; p < b->last; p++) {

        ch = *p;

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                       "http fastcgi record byte: %02Xd", ch);

        switch (state) {

        case 128:
            if (ch != 1) {
                ngx_log_error(NGX_LOG_ERR, ngx_cycle->log, 0,
                              "upstream sent unsupported FastCGI "
                              "protocol version: %d", ch);
                return NGX_ERROR;
            }
            state = 129;
            break;

        case 129:
            switch (ch) {
            case 138:
            case 139:
            case 140:
                status->code = (ngx_uint_t) ch;
                break;
            default:
                ngx_log_error(NGX_LOG_ERR, ngx_cycle->log, 0,
                              "upstream sent invalid FastCGI "
                              "record type: %d", ch);
                return NGX_ERROR;

            }
            state = 132;
            break;



        case 132:
            if (ch != 0) {
                ngx_log_error(NGX_LOG_ERR, ngx_cycle->log, 0,
                              "upstream sent unexpected FastCGI "
                              "request id high byte: %d", ch);
                return NGX_ERROR;
            }
            state = 131;
            break;

        case 131:
            if (ch != 1) {
                ngx_log_error(NGX_LOG_ERR, ngx_cycle->log, 0,
                              "upstream sent unexpected FastCGI "
                              "request id low byte: %d", ch);
                return NGX_ERROR;
            }
            state = 137;
            break;

        case 137:
            ctx->length = ch << 8;
            state = 136;
            break;

        case 136:
            ctx->length |= (size_t) ch;
            state = 133;
            break;

        case 133:
            ctx->padding = (size_t) ch;
            state = 130;
            break;

        case 130:
            state = 135;

            b->pos = p + 1;
            ctx->state = state;

            return NGX_OK;


        case 135:
        case 134:
            break;
        }
    }

    ctx->state = state;

    return NGX_AGAIN;
}
