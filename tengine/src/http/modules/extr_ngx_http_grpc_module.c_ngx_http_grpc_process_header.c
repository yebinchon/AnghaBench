
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_64__ TYPE_9__ ;
typedef struct TYPE_63__ TYPE_8__ ;
typedef struct TYPE_62__ TYPE_7__ ;
typedef struct TYPE_61__ TYPE_6__ ;
typedef struct TYPE_60__ TYPE_5__ ;
typedef struct TYPE_59__ TYPE_4__ ;
typedef struct TYPE_58__ TYPE_3__ ;
typedef struct TYPE_57__ TYPE_2__ ;
typedef struct TYPE_56__ TYPE_1__ ;
typedef struct TYPE_55__ TYPE_19__ ;
typedef struct TYPE_54__ TYPE_16__ ;
typedef struct TYPE_53__ TYPE_13__ ;
typedef struct TYPE_52__ TYPE_12__ ;
typedef struct TYPE_51__ TYPE_11__ ;
typedef struct TYPE_50__ TYPE_10__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
struct TYPE_55__ {int len; char* data; } ;
struct TYPE_62__ {int len; int data; } ;
struct TYPE_61__ {char* lowcase_key; TYPE_19__ key; int hash; TYPE_7__ value; } ;
typedef TYPE_6__ ngx_table_elt_t ;
typedef TYPE_7__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_59__ {scalar_t__ content_length_n; int headers; scalar_t__ status_n; } ;
struct TYPE_57__ {TYPE_1__* connection; } ;
struct TYPE_53__ {int last; int pos; int start; } ;
struct TYPE_63__ {int keepalive; TYPE_4__ headers_in; TYPE_3__* state; TYPE_2__ peer; TYPE_13__ buffer; } ;
typedef TYPE_8__ ngx_http_upstream_t ;
struct TYPE_64__ {int headers_in_hash; } ;
typedef TYPE_9__ ngx_http_upstream_main_conf_t ;
struct TYPE_50__ {scalar_t__ (* handler ) (TYPE_11__*,TYPE_6__*,int ) ;int offset; } ;
typedef TYPE_10__ ngx_http_upstream_header_t ;
struct TYPE_51__ {TYPE_5__* connection; TYPE_8__* upstream; } ;
typedef TYPE_11__ ngx_http_request_t ;
struct TYPE_52__ {scalar_t__ state; scalar_t__ type; scalar_t__ stream_id; scalar_t__ id; scalar_t__ rest; int status; int output_blocked; scalar_t__ output_closed; int * out; int * in; scalar_t__ end_stream; TYPE_7__ value; TYPE_19__ name; int error; scalar_t__ parsing_headers; } ;
typedef TYPE_12__ ngx_http_grpc_ctx_t ;
typedef TYPE_13__ ngx_buf_t ;
struct TYPE_60__ {TYPE_16__* log; } ;
struct TYPE_58__ {scalar_t__ status; } ;
struct TYPE_56__ {int write; } ;
struct TYPE_54__ {int log_level; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_OK ;
 scalar_t__ NGX_HTTP_PARSE_HEADER_DONE ;
 scalar_t__ NGX_HTTP_UPSTREAM_INVALID_HEADER ;
 scalar_t__ NGX_HTTP_V2_CONTINUATION_FRAME ;
 scalar_t__ NGX_HTTP_V2_DATA_FRAME ;
 scalar_t__ NGX_HTTP_V2_GOAWAY_FRAME ;
 scalar_t__ NGX_HTTP_V2_HEADERS_FRAME ;
 scalar_t__ NGX_HTTP_V2_PING_FRAME ;
 scalar_t__ NGX_HTTP_V2_PUSH_PROMISE_FRAME ;
 scalar_t__ NGX_HTTP_V2_RST_STREAM_FRAME ;
 scalar_t__ NGX_HTTP_V2_SETTINGS_FRAME ;
 scalar_t__ NGX_HTTP_V2_WINDOW_UPDATE_FRAME ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_atoi (int ,int) ;
 TYPE_10__* ngx_hash_find (int *,int ,char*,int) ;
 int ngx_hash_key (char*,int) ;
 int * ngx_hex_dump (int *,int,size_t) ;
 TYPE_9__* ngx_http_get_module_main_conf (TYPE_11__*,int ) ;
 TYPE_12__* ngx_http_grpc_get_ctx (TYPE_11__*) ;
 scalar_t__ ngx_http_grpc_parse_frame (TYPE_11__*,TYPE_12__*,TYPE_13__*) ;
 scalar_t__ ngx_http_grpc_parse_goaway (TYPE_11__*,TYPE_12__*,TYPE_13__*) ;
 scalar_t__ ngx_http_grpc_parse_header (TYPE_11__*,TYPE_12__*,TYPE_13__*) ;
 scalar_t__ ngx_http_grpc_parse_ping (TYPE_11__*,TYPE_12__*,TYPE_13__*) ;
 scalar_t__ ngx_http_grpc_parse_rst_stream (TYPE_11__*,TYPE_12__*,TYPE_13__*) ;
 scalar_t__ ngx_http_grpc_parse_settings (TYPE_11__*,TYPE_12__*,TYPE_13__*) ;
 scalar_t__ ngx_http_grpc_parse_window_update (TYPE_11__*,TYPE_12__*,TYPE_13__*) ;
 scalar_t__ ngx_http_grpc_st_payload ;
 void* ngx_http_grpc_st_start ;
 int ngx_http_upstream_module ;
 TYPE_6__* ngx_list_push (int *) ;
 int ngx_log_debug0 (int,TYPE_16__*,int ,char*) ;
 int ngx_log_debug2 (int,TYPE_16__*,int ,char*,TYPE_19__*,TYPE_7__*) ;
 int ngx_log_debug4 (int,TYPE_16__*,int ,char*,size_t,int *,char*,int) ;
 int ngx_log_error (int ,TYPE_16__*,int ,char*,...) ;
 size_t ngx_min (int,int) ;
 int ngx_post_event (int ,int *) ;
 int ngx_posted_events ;
 scalar_t__ ngx_strncmp (char*,char*,int) ;
 scalar_t__ stub1 (TYPE_11__*,TYPE_6__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_grpc_process_header(ngx_http_request_t *r)
{
    ngx_str_t *status_line;
    ngx_int_t rc, status;
    ngx_buf_t *b;
    ngx_table_elt_t *h;
    ngx_http_upstream_t *u;
    ngx_http_grpc_ctx_t *ctx;
    ngx_http_upstream_header_t *hh;
    ngx_http_upstream_main_conf_t *umcf;

    u = r->upstream;
    b = &u->buffer;
    ctx = ngx_http_grpc_get_ctx(r);

    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    umcf = ngx_http_get_module_main_conf(r, ngx_http_upstream_module);

    for ( ;; ) {

        if (ctx->state < ngx_http_grpc_st_payload) {

            rc = ngx_http_grpc_parse_frame(r, ctx, b);

            if (rc == NGX_AGAIN) {







                if (!ctx->parsing_headers) {
                    b->pos = b->start;
                    b->last = b->pos;
                }

                return NGX_AGAIN;
            }

            if (rc == NGX_ERROR) {
                return NGX_HTTP_UPSTREAM_INVALID_HEADER;
            }
            if (ctx->type == NGX_HTTP_V2_DATA_FRAME
                || (ctx->type == NGX_HTTP_V2_CONTINUATION_FRAME
                    && !ctx->parsing_headers)
                || (ctx->type != NGX_HTTP_V2_CONTINUATION_FRAME
                    && ctx->parsing_headers))
            {
                ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                              "upstream sent unexpected http2 frame: %d",
                              ctx->type);
                return NGX_HTTP_UPSTREAM_INVALID_HEADER;
            }

            if (ctx->stream_id && ctx->stream_id != ctx->id) {
                ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                              "upstream sent frame for unknown stream %ui",
                              ctx->stream_id);
                return NGX_HTTP_UPSTREAM_INVALID_HEADER;
            }
        }



        if (ctx->type == NGX_HTTP_V2_RST_STREAM_FRAME) {

            rc = ngx_http_grpc_parse_rst_stream(r, ctx, b);

            if (rc == NGX_AGAIN) {
                return NGX_AGAIN;
            }

            if (rc == NGX_ERROR) {
                return NGX_HTTP_UPSTREAM_INVALID_HEADER;
            }

            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "upstream rejected request with error %ui",
                          ctx->error);

            return NGX_HTTP_UPSTREAM_INVALID_HEADER;
        }

        if (ctx->type == NGX_HTTP_V2_GOAWAY_FRAME) {

            rc = ngx_http_grpc_parse_goaway(r, ctx, b);

            if (rc == NGX_AGAIN) {
                return NGX_AGAIN;
            }

            if (rc == NGX_ERROR) {
                return NGX_HTTP_UPSTREAM_INVALID_HEADER;
            }
            if (ctx->stream_id < ctx->id) {



                ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                              "upstream sent goaway with error %ui",
                              ctx->error);

                return NGX_HTTP_UPSTREAM_INVALID_HEADER;
            }

            continue;
        }

        if (ctx->type == NGX_HTTP_V2_WINDOW_UPDATE_FRAME) {

            rc = ngx_http_grpc_parse_window_update(r, ctx, b);

            if (rc == NGX_AGAIN) {
                return NGX_AGAIN;
            }

            if (rc == NGX_ERROR) {
                return NGX_HTTP_UPSTREAM_INVALID_HEADER;
            }

            if (ctx->in) {
                ngx_post_event(u->peer.connection->write, &ngx_posted_events);
            }

            continue;
        }

        if (ctx->type == NGX_HTTP_V2_SETTINGS_FRAME) {

            rc = ngx_http_grpc_parse_settings(r, ctx, b);

            if (rc == NGX_AGAIN) {
                return NGX_AGAIN;
            }

            if (rc == NGX_ERROR) {
                return NGX_HTTP_UPSTREAM_INVALID_HEADER;
            }

            if (ctx->in) {
                ngx_post_event(u->peer.connection->write, &ngx_posted_events);
            }

            continue;
        }

        if (ctx->type == NGX_HTTP_V2_PING_FRAME) {

            rc = ngx_http_grpc_parse_ping(r, ctx, b);

            if (rc == NGX_AGAIN) {
                return NGX_AGAIN;
            }

            if (rc == NGX_ERROR) {
                return NGX_HTTP_UPSTREAM_INVALID_HEADER;
            }

            ngx_post_event(u->peer.connection->write, &ngx_posted_events);
            continue;
        }

        if (ctx->type == NGX_HTTP_V2_PUSH_PROMISE_FRAME) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "upstream sent unexpected push promise frame");
            return NGX_HTTP_UPSTREAM_INVALID_HEADER;
        }

        if (ctx->type != NGX_HTTP_V2_HEADERS_FRAME
            && ctx->type != NGX_HTTP_V2_CONTINUATION_FRAME)
        {


            if (b->last - b->pos < (ssize_t) ctx->rest) {
                ctx->rest -= b->last - b->pos;
                b->pos = b->last;
                return NGX_AGAIN;
            }

            b->pos += ctx->rest;
            ctx->rest = 0;
            ctx->state = ngx_http_grpc_st_start;

            continue;
        }



        for ( ;; ) {

            rc = ngx_http_grpc_parse_header(r, ctx, b);

            if (rc == NGX_AGAIN) {
                break;
            }

            if (rc == NGX_OK) {



                ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                               "grpc header: \"%V: %V\"",
                               &ctx->name, &ctx->value);

                if (ctx->name.len && ctx->name.data[0] == ':') {

                    if (ctx->name.len != sizeof(":status") - 1
                        || ngx_strncmp(ctx->name.data, ":status",
                                       sizeof(":status") - 1)
                           != 0)
                    {
                        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                                      "upstream sent invalid header \"%V: %V\"",
                                      &ctx->name, &ctx->value);
                        return NGX_HTTP_UPSTREAM_INVALID_HEADER;
                    }

                    if (ctx->status) {
                        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                                      "upstream sent duplicate :status header");
                        return NGX_HTTP_UPSTREAM_INVALID_HEADER;
                    }

                    status_line = &ctx->value;

                    if (status_line->len != 3) {
                        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                                      "upstream sent invalid :status \"%V\"",
                                      status_line);
                        return NGX_HTTP_UPSTREAM_INVALID_HEADER;
                    }

                    status = ngx_atoi(status_line->data, 3);

                    if (status == NGX_ERROR) {
                        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                                      "upstream sent invalid :status \"%V\"",
                                      status_line);
                        return NGX_HTTP_UPSTREAM_INVALID_HEADER;
                    }

                    if (status < NGX_HTTP_OK) {
                        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                                      "upstream sent unexpected :status \"%V\"",
                                      status_line);
                        return NGX_HTTP_UPSTREAM_INVALID_HEADER;
                    }

                    u->headers_in.status_n = status;

                    if (u->state && u->state->status == 0) {
                        u->state->status = status;
                    }

                    ctx->status = 1;

                    continue;

                } else if (!ctx->status) {
                    ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                                  "upstream sent no :status header");
                    return NGX_HTTP_UPSTREAM_INVALID_HEADER;
                }

                h = ngx_list_push(&u->headers_in.headers);
                if (h == ((void*)0)) {
                    return NGX_ERROR;
                }

                h->key = ctx->name;
                h->value = ctx->value;
                h->lowcase_key = h->key.data;
                h->hash = ngx_hash_key(h->key.data, h->key.len);

                hh = ngx_hash_find(&umcf->headers_in_hash, h->hash,
                                   h->lowcase_key, h->key.len);

                if (hh && hh->handler(r, h, hh->offset) != NGX_OK) {
                    return NGX_ERROR;
                }

                continue;
            }

            if (rc == NGX_HTTP_PARSE_HEADER_DONE) {



                ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                               "grpc header done");

                if (ctx->end_stream) {
                    u->headers_in.content_length_n = 0;

                    if (ctx->in == ((void*)0)
                        && ctx->out == ((void*)0)
                        && ctx->output_closed
                        && !ctx->output_blocked
                        && b->last == b->pos)
                    {
                        u->keepalive = 1;
                    }
                }

                return NGX_OK;
            }



            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "upstream sent invalid header");

            return NGX_HTTP_UPSTREAM_INVALID_HEADER;
        }



        if (ctx->rest == 0) {
            ctx->state = ngx_http_grpc_st_start;
            continue;
        }

        return NGX_AGAIN;
    }
}
