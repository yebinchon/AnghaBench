#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int ngx_int_t ;
struct TYPE_19__ {size_t left_length; int segment_count; TYPE_7__* segment_data; scalar_t__ last_write_segment_index; scalar_t__ segment_index; } ;
struct TYPE_17__ {int version; scalar_t__ offset; } ;
struct TYPE_20__ {TYPE_3__ file; int /*<<< orphan*/  pool; int /*<<< orphan*/  log; TYPE_1__ r_ctx; scalar_t__ is_large_file; TYPE_5__* send_body; } ;
typedef  TYPE_4__ ngx_http_tfs_t ;
typedef  int /*<<< orphan*/  ngx_http_tfs_segment_data_t ;
struct TYPE_21__ {TYPE_6__* buf; struct TYPE_21__* next; } ;
typedef  TYPE_5__ ngx_chain_t ;
struct TYPE_22__ {size_t last; size_t pos; size_t start; size_t file_last; size_t file_pos; } ;
typedef  TYPE_6__ ngx_buf_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_18__ {size_t size; scalar_t__ offset; } ;
struct TYPE_23__ {size_t oper_size; TYPE_5__* data; int /*<<< orphan*/  orig_data; TYPE_2__ segment_info; } ;

/* Variables and functions */
 int NGX_ERROR ; 
 scalar_t__ NGX_HTTP_TFS_APPEND_OFFSET ; 
 size_t NGX_HTTP_TFS_MAX_FRAGMENT_SIZE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int NGX_OK ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_6__*) ; 
 size_t FUNC3 (TYPE_6__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 size_t FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,TYPE_6__*,int) ; 
 void* FUNC11 (size_t,size_t) ; 
 TYPE_7__* FUNC12 (int /*<<< orphan*/ ,size_t) ; 

ngx_int_t
FUNC13(ngx_http_tfs_t *t)
{
    size_t        data_size, buf_size, size;
    int64_t       offset;
    uint32_t      left_size;
    ngx_int_t     seg_count, i, rc;
    ngx_buf_t    *b;
    ngx_chain_t  *body, *cl, **ll;

    if (t->send_body == NULL) {
        return NGX_ERROR;
    }

    body = t->send_body;
    offset = 0;

    /*
     * body buf is one or two bufs ,
     * please see ngx_http_read_client_request_body
     */
    data_size = FUNC5(body);
    t->file.left_length = data_size;

    seg_count = (data_size + NGX_HTTP_TFS_MAX_FRAGMENT_SIZE - 1)
                 / NGX_HTTP_TFS_MAX_FRAGMENT_SIZE;
    /* alloc one more so we can put large file's meta segment here */
    size = sizeof(ngx_http_tfs_segment_data_t) * (seg_count + 1);

    if (t->file.segment_data == NULL) {
        t->file.segment_data = FUNC12(t->pool, size);
        if (t->file.segment_data == NULL) {
            return NGX_ERROR;
        }
    }

    t->file.segment_count = seg_count;
    t->file.segment_index = 0;
    t->file.last_write_segment_index = 0;

    if (t->is_large_file) {
        offset = 0;  /* large file do not support pwrite */

    } else if (t->r_ctx.version == 2) {
        offset = t->r_ctx.offset;
    }

    for (i = 0; i < seg_count; i++) {
        t->file.segment_data[i].segment_info.offset = offset;
        t->file.segment_data[i].segment_info.size =
            FUNC11(data_size, NGX_HTTP_TFS_MAX_FRAGMENT_SIZE);
        t->file.segment_data[i].oper_size =
                                      t->file.segment_data[i].segment_info.size;
        if (t->is_large_file
            || (t->r_ctx.version == 2 && offset != NGX_HTTP_TFS_APPEND_OFFSET))
        {
            offset += NGX_HTTP_TFS_MAX_FRAGMENT_SIZE;
        }
        data_size -= t->file.segment_data[i].segment_info.size;

        /* prepare each segment's data */
        left_size = t->file.segment_data[i].segment_info.size;
        ll = &t->file.segment_data[i].data;
        FUNC7(NGX_LOG_DEBUG_HTTP, t->log, 0,
                      "prepare segment[%i]'s data", i);

        while (left_size > 0) {
            while (body && FUNC3(body->buf) == 0) {
                FUNC6(NGX_LOG_DEBUG_HTTP, t->log, 0,
                              "zero body buf");
                body = body->next;
            }
            if (body == NULL) {
                FUNC9(NGX_LOG_ERR, t->log, 0,
                              "prepare segment data[%i] failed for early end.",
                              i);
                return NGX_ERROR;
            }
            buf_size = FUNC11(FUNC3(body->buf), left_size);

            b = FUNC0(t->pool);
            if (b == NULL) {
                return NGX_ERROR;
            }
            FUNC10(b, body->buf, sizeof(ngx_buf_t));
            if (FUNC2(b)) {
                b->last = b->pos + buf_size;
                FUNC8(NGX_LOG_DEBUG_HTTP, t->log, 0,
                               "pos: %uD, last: %uD, size: %z",
                               (b->pos - b->start),
                               (b->last - b->start),
                               buf_size);

            } else {
                b->file_last = b->file_pos + buf_size;
                FUNC8(NGX_LOG_DEBUG_HTTP, t->log, 0,
                               "pos: %O, last: %O, size: %z",
                               b->file_pos, b->file_last, buf_size);
            }

            cl = FUNC1(t->pool);
            if (cl == NULL) {
                return NGX_ERROR;
            }
            cl->buf = b;
            cl->next = NULL;
            *ll = cl;
            ll = &cl->next;

            if (FUNC2(body->buf)) {
                body->buf->pos += buf_size;

            } else {
                body->buf->file_pos += buf_size;
            }

            left_size -= buf_size;
        }
        /* copy data to orig_data so that we can retry write */
        rc = FUNC4(t->pool,
            &t->file.segment_data[i].orig_data, t->file.segment_data[i].data);
        if (rc == NGX_ERROR) {
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}