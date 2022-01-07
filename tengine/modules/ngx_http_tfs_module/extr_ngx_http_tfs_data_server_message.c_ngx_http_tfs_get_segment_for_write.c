
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ngx_int_t ;
struct TYPE_19__ {size_t left_length; int segment_count; TYPE_7__* segment_data; scalar_t__ last_write_segment_index; scalar_t__ segment_index; } ;
struct TYPE_17__ {int version; scalar_t__ offset; } ;
struct TYPE_20__ {TYPE_3__ file; int pool; int log; TYPE_1__ r_ctx; scalar_t__ is_large_file; TYPE_5__* send_body; } ;
typedef TYPE_4__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_segment_data_t ;
struct TYPE_21__ {TYPE_6__* buf; struct TYPE_21__* next; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_22__ {size_t last; size_t pos; size_t start; size_t file_last; size_t file_pos; } ;
typedef TYPE_6__ ngx_buf_t ;
typedef scalar_t__ int64_t ;
struct TYPE_18__ {size_t size; scalar_t__ offset; } ;
struct TYPE_23__ {size_t oper_size; TYPE_5__* data; int orig_data; TYPE_2__ segment_info; } ;


 int NGX_ERROR ;
 scalar_t__ NGX_HTTP_TFS_APPEND_OFFSET ;
 size_t NGX_HTTP_TFS_MAX_FRAGMENT_SIZE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 TYPE_6__* ngx_alloc_buf (int ) ;
 TYPE_5__* ngx_alloc_chain_link (int ) ;
 scalar_t__ ngx_buf_in_memory (TYPE_6__*) ;
 size_t ngx_buf_size (TYPE_6__*) ;
 int ngx_chain_add_copy_with_buf (int ,int *,TYPE_5__*) ;
 size_t ngx_http_tfs_get_chain_buf_size (TYPE_5__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_debug3 (int ,int ,int ,char*,size_t,size_t,size_t) ;
 int ngx_log_error (int ,int ,int ,char*,int) ;
 int ngx_memcpy (TYPE_6__*,TYPE_6__*,int) ;
 void* ngx_min (size_t,size_t) ;
 TYPE_7__* ngx_pcalloc (int ,size_t) ;

ngx_int_t
ngx_http_tfs_get_segment_for_write(ngx_http_tfs_t *t)
{
    size_t data_size, buf_size, size;
    int64_t offset;
    uint32_t left_size;
    ngx_int_t seg_count, i, rc;
    ngx_buf_t *b;
    ngx_chain_t *body, *cl, **ll;

    if (t->send_body == ((void*)0)) {
        return NGX_ERROR;
    }

    body = t->send_body;
    offset = 0;





    data_size = ngx_http_tfs_get_chain_buf_size(body);
    t->file.left_length = data_size;

    seg_count = (data_size + NGX_HTTP_TFS_MAX_FRAGMENT_SIZE - 1)
                 / NGX_HTTP_TFS_MAX_FRAGMENT_SIZE;

    size = sizeof(ngx_http_tfs_segment_data_t) * (seg_count + 1);

    if (t->file.segment_data == ((void*)0)) {
        t->file.segment_data = ngx_pcalloc(t->pool, size);
        if (t->file.segment_data == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    t->file.segment_count = seg_count;
    t->file.segment_index = 0;
    t->file.last_write_segment_index = 0;

    if (t->is_large_file) {
        offset = 0;

    } else if (t->r_ctx.version == 2) {
        offset = t->r_ctx.offset;
    }

    for (i = 0; i < seg_count; i++) {
        t->file.segment_data[i].segment_info.offset = offset;
        t->file.segment_data[i].segment_info.size =
            ngx_min(data_size, NGX_HTTP_TFS_MAX_FRAGMENT_SIZE);
        t->file.segment_data[i].oper_size =
                                      t->file.segment_data[i].segment_info.size;
        if (t->is_large_file
            || (t->r_ctx.version == 2 && offset != NGX_HTTP_TFS_APPEND_OFFSET))
        {
            offset += NGX_HTTP_TFS_MAX_FRAGMENT_SIZE;
        }
        data_size -= t->file.segment_data[i].segment_info.size;


        left_size = t->file.segment_data[i].segment_info.size;
        ll = &t->file.segment_data[i].data;
        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, t->log, 0,
                      "prepare segment[%i]'s data", i);

        while (left_size > 0) {
            while (body && ngx_buf_size(body->buf) == 0) {
                ngx_log_debug0(NGX_LOG_DEBUG_HTTP, t->log, 0,
                              "zero body buf");
                body = body->next;
            }
            if (body == ((void*)0)) {
                ngx_log_error(NGX_LOG_ERR, t->log, 0,
                              "prepare segment data[%i] failed for early end.",
                              i);
                return NGX_ERROR;
            }
            buf_size = ngx_min(ngx_buf_size(body->buf), left_size);

            b = ngx_alloc_buf(t->pool);
            if (b == ((void*)0)) {
                return NGX_ERROR;
            }
            ngx_memcpy(b, body->buf, sizeof(ngx_buf_t));
            if (ngx_buf_in_memory(b)) {
                b->last = b->pos + buf_size;
                ngx_log_debug3(NGX_LOG_DEBUG_HTTP, t->log, 0,
                               "pos: %uD, last: %uD, size: %z",
                               (b->pos - b->start),
                               (b->last - b->start),
                               buf_size);

            } else {
                b->file_last = b->file_pos + buf_size;
                ngx_log_debug3(NGX_LOG_DEBUG_HTTP, t->log, 0,
                               "pos: %O, last: %O, size: %z",
                               b->file_pos, b->file_last, buf_size);
            }

            cl = ngx_alloc_chain_link(t->pool);
            if (cl == ((void*)0)) {
                return NGX_ERROR;
            }
            cl->buf = b;
            cl->next = ((void*)0);
            *ll = cl;
            ll = &cl->next;

            if (ngx_buf_in_memory(body->buf)) {
                body->buf->pos += buf_size;

            } else {
                body->buf->file_pos += buf_size;
            }

            left_size -= buf_size;
        }

        rc = ngx_chain_add_copy_with_buf(t->pool,
            &t->file.segment_data[i].orig_data, t->file.segment_data[i].data);
        if (rc == NGX_ERROR) {
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}
