
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char u_char ;
typedef int ngx_int_t ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {int state; scalar_t__ size; int length; } ;
typedef TYPE_3__ ngx_http_chunked_t ;
struct TYPE_11__ {char* pos; char* last; } ;
typedef TYPE_4__ ngx_buf_t ;
struct TYPE_8__ {int log; } ;




 int NGX_AGAIN ;
 int NGX_DONE ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_MAX_OFF_T_VALUE ;
 int NGX_OK ;
 int ngx_log_debug2 (int ,int ,int ,char*,char,int) ;

ngx_int_t
ngx_http_parse_chunked(ngx_http_request_t *r, ngx_buf_t *b,
    ngx_http_chunked_t *ctx)
{
    u_char *pos, ch, c;
    ngx_int_t rc;
    enum {
        sw_chunk_start = 0,
        sw_chunk_size,
        sw_chunk_extension,
        sw_chunk_extension_almost_done,
        sw_chunk_data,
        sw_after_data,
        sw_after_data_almost_done,
        sw_last_chunk_extension,
        sw_last_chunk_extension_almost_done,
        sw_trailer,
        sw_trailer_almost_done,
        sw_trailer_header,
        sw_trailer_header_almost_done
    } state;

    state = ctx->state;

    if (state == sw_chunk_data && ctx->size == 0) {
        state = sw_after_data;
    }

    rc = NGX_AGAIN;

    for (pos = b->pos; pos < b->last; pos++) {

        ch = *pos;

        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "http chunked byte: %02Xd s:%d", ch, state);

        switch (state) {

        case sw_chunk_start:
            if (ch >= '0' && ch <= '9') {
                state = sw_chunk_size;
                ctx->size = ch - '0';
                break;
            }

            c = (u_char) (ch | 0x20);

            if (c >= 'a' && c <= 'f') {
                state = sw_chunk_size;
                ctx->size = c - 'a' + 10;
                break;
            }

            goto invalid;

        case sw_chunk_size:
            if (ctx->size > NGX_MAX_OFF_T_VALUE / 16) {
                goto invalid;
            }

            if (ch >= '0' && ch <= '9') {
                ctx->size = ctx->size * 16 + (ch - '0');
                break;
            }

            c = (u_char) (ch | 0x20);

            if (c >= 'a' && c <= 'f') {
                ctx->size = ctx->size * 16 + (c - 'a' + 10);
                break;
            }

            if (ctx->size == 0) {

                switch (ch) {
                case 129:
                    state = sw_last_chunk_extension_almost_done;
                    break;
                case 128:
                    state = sw_trailer;
                    break;
                case ';':
                case ' ':
                case '\t':
                    state = sw_last_chunk_extension;
                    break;
                default:
                    goto invalid;
                }

                break;
            }

            switch (ch) {
            case 129:
                state = sw_chunk_extension_almost_done;
                break;
            case 128:
                state = sw_chunk_data;
                break;
            case ';':
            case ' ':
            case '\t':
                state = sw_chunk_extension;
                break;
            default:
                goto invalid;
            }

            break;

        case sw_chunk_extension:
            switch (ch) {
            case 129:
                state = sw_chunk_extension_almost_done;
                break;
            case 128:
                state = sw_chunk_data;
            }
            break;

        case sw_chunk_extension_almost_done:
            if (ch == 128) {
                state = sw_chunk_data;
                break;
            }
            goto invalid;

        case sw_chunk_data:
            rc = NGX_OK;
            goto data;

        case sw_after_data:
            switch (ch) {
            case 129:
                state = sw_after_data_almost_done;
                break;
            case 128:
                state = sw_chunk_start;
            }
            break;

        case sw_after_data_almost_done:
            if (ch == 128) {
                state = sw_chunk_start;
                break;
            }
            goto invalid;

        case sw_last_chunk_extension:
            switch (ch) {
            case 129:
                state = sw_last_chunk_extension_almost_done;
                break;
            case 128:
                state = sw_trailer;
            }
            break;

        case sw_last_chunk_extension_almost_done:
            if (ch == 128) {
                state = sw_trailer;
                break;
            }
            goto invalid;

        case sw_trailer:
            switch (ch) {
            case 129:
                state = sw_trailer_almost_done;
                break;
            case 128:
                goto done;
            default:
                state = sw_trailer_header;
            }
            break;

        case sw_trailer_almost_done:
            if (ch == 128) {
                goto done;
            }
            goto invalid;

        case sw_trailer_header:
            switch (ch) {
            case 129:
                state = sw_trailer_header_almost_done;
                break;
            case 128:
                state = sw_trailer;
            }
            break;

        case sw_trailer_header_almost_done:
            if (ch == 128) {
                state = sw_trailer;
                break;
            }
            goto invalid;

        }
    }

data:

    ctx->state = state;
    b->pos = pos;

    if (ctx->size > NGX_MAX_OFF_T_VALUE - 5) {
        goto invalid;
    }

    switch (state) {

    case sw_chunk_start:
        ctx->length = 3 ;
        break;
    case sw_chunk_size:
        ctx->length = 1
                      + (ctx->size ? ctx->size + 4
                                   : 1 );
        break;
    case sw_chunk_extension:
    case sw_chunk_extension_almost_done:
        ctx->length = 1 + ctx->size + 4 ;
        break;
    case sw_chunk_data:
        ctx->length = ctx->size + 4 ;
        break;
    case sw_after_data:
    case sw_after_data_almost_done:
        ctx->length = 4 ;
        break;
    case sw_last_chunk_extension:
    case sw_last_chunk_extension_almost_done:
        ctx->length = 2 ;
        break;
    case sw_trailer:
    case sw_trailer_almost_done:
        ctx->length = 1 ;
        break;
    case sw_trailer_header:
    case sw_trailer_header_almost_done:
        ctx->length = 2 ;
        break;

    }

    return rc;

done:

    ctx->state = 0;
    b->pos = pos + 1;

    return NGX_DONE;

invalid:

    return NGX_ERROR;
}
