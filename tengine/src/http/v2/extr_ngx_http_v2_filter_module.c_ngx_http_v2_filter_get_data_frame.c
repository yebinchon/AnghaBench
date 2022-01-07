
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


typedef scalar_t__ u_char ;
typedef int ngx_uint_t ;
struct TYPE_20__ {TYPE_4__* node; TYPE_3__* request; int free_frame_headers; int frames; TYPE_6__* free_frames; TYPE_7__* connection; } ;
typedef TYPE_5__ ngx_http_v2_stream_t ;
struct TYPE_21__ {size_t length; scalar_t__ fin; scalar_t__ blocked; TYPE_5__* stream; int handler; TYPE_8__* last; TYPE_8__* first; struct TYPE_21__* next; } ;
typedef TYPE_6__ ngx_http_v2_out_frame_t ;
struct TYPE_22__ {int frames; TYPE_1__* connection; } ;
typedef TYPE_7__ ngx_http_v2_connection_t ;
struct TYPE_23__ {TYPE_9__* buf; struct TYPE_23__* next; } ;
typedef TYPE_8__ ngx_chain_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_24__ {int memory; int flush; scalar_t__ last_buf; int * last; int * pos; int * start; scalar_t__ tag; int * end; } ;
typedef TYPE_9__ ngx_buf_t ;
struct TYPE_19__ {int id; } ;
struct TYPE_18__ {int pool; TYPE_2__* connection; } ;
struct TYPE_17__ {int log; } ;
struct TYPE_16__ {int error; int log; } ;


 int NGX_HTTP_V2_DATA_FRAME ;
 scalar_t__ NGX_HTTP_V2_END_STREAM_FLAG ;
 int NGX_HTTP_V2_FRAME_HEADER_SIZE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 TYPE_8__* ngx_chain_get_free_buf (int ,int *) ;
 int ngx_http_v2_data_frame_handler ;
 int ngx_http_v2_module ;
 int * ngx_http_v2_write_len_and_type (int *,size_t,int ) ;
 int * ngx_http_v2_write_sid (int *,int ) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int ,TYPE_6__*,size_t,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 void* ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_http_v2_out_frame_t *
ngx_http_v2_filter_get_data_frame(ngx_http_v2_stream_t *stream,
    size_t len, ngx_chain_t *first, ngx_chain_t *last)
{
    u_char flags;
    ngx_buf_t *buf;
    ngx_chain_t *cl;
    ngx_http_v2_out_frame_t *frame;
    ngx_http_v2_connection_t *h2c;

    frame = stream->free_frames;
    h2c = stream->connection;

    if (frame) {
        stream->free_frames = frame->next;

    } else if (h2c->frames < 10000) {
        frame = ngx_palloc(stream->request->pool,
                           sizeof(ngx_http_v2_out_frame_t));
        if (frame == ((void*)0)) {
            return ((void*)0);
        }

        stream->frames++;
        h2c->frames++;

    } else {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "http2 flood detected");

        h2c->connection->error = 1;
        return ((void*)0);
    }

    flags = last->buf->last_buf ? NGX_HTTP_V2_END_STREAM_FLAG : 0;

    ngx_log_debug4(NGX_LOG_DEBUG_HTTP, stream->request->connection->log, 0,
                   "http2:%ui create DATA frame %p: len:%uz flags:%ui",
                   stream->node->id, frame, len, (ngx_uint_t) flags);

    cl = ngx_chain_get_free_buf(stream->request->pool,
                                &stream->free_frame_headers);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    buf = cl->buf;

    if (buf->start == ((void*)0)) {
        buf->start = ngx_palloc(stream->request->pool,
                                NGX_HTTP_V2_FRAME_HEADER_SIZE);
        if (buf->start == ((void*)0)) {
            return ((void*)0);
        }

        buf->end = buf->start + NGX_HTTP_V2_FRAME_HEADER_SIZE;
        buf->last = buf->end;

        buf->tag = (ngx_buf_tag_t) &ngx_http_v2_module;
        buf->memory = 1;
    }

    buf->pos = buf->start;
    buf->last = buf->pos;

    buf->last = ngx_http_v2_write_len_and_type(buf->last, len,
                                               NGX_HTTP_V2_DATA_FRAME);
    *buf->last++ = flags;

    buf->last = ngx_http_v2_write_sid(buf->last, stream->node->id);

    cl->next = first;
    first = cl;

    last->buf->flush = 1;

    frame->first = first;
    frame->last = last;
    frame->handler = ngx_http_v2_data_frame_handler;
    frame->stream = stream;
    frame->length = len;
    frame->blocked = 0;
    frame->fin = last->buf->last_buf;

    return frame;
}
