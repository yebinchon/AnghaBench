
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_12__ {int segment_count; TYPE_6__* segment_data; scalar_t__ segment_index; } ;
struct TYPE_13__ {TYPE_2__ file; int pool; TYPE_4__* seg_head; int log; TYPE_1__* meta_segment_data; } ;
typedef TYPE_3__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_segment_info_t ;
struct TYPE_14__ {int count; } ;
typedef TYPE_4__ ngx_http_tfs_segment_head_t ;
typedef int ngx_http_tfs_segment_data_t ;
struct TYPE_15__ {int * last; scalar_t__ pos; } ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_16__ {int segment_info; } ;
struct TYPE_11__ {TYPE_5__* buf; } ;


 int NGX_ERROR ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_buf_size (TYPE_5__*) ;
 TYPE_6__* ngx_http_tfs_prealloc (int ,TYPE_6__*,int,int) ;
 int ngx_log_error (int ,int ,int ,char*,int,int) ;
 int ngx_memzero (TYPE_6__*,int) ;

ngx_int_t
ngx_http_tfs_get_segment_for_delete(ngx_http_tfs_t *t)
{
    uint32_t buf_size, seg_count, max_seg_count, i;
    ngx_buf_t *b;
    ngx_http_tfs_segment_info_t *seg_info;

    if (t->meta_segment_data == ((void*)0)) {
        return NGX_ERROR;
    }
    b = t->meta_segment_data->buf;
    if (b == ((void*)0)) {
        return NGX_ERROR;
    }

    buf_size = ngx_buf_size(b);
    if (buf_size < (sizeof(ngx_http_tfs_segment_head_t) +
                    sizeof(ngx_http_tfs_segment_info_t)))
    {
        return NGX_ERROR;
    }

    t->seg_head = (ngx_http_tfs_segment_head_t*)(b->pos);
    seg_info = (ngx_http_tfs_segment_info_t*)
        (b->pos + sizeof(ngx_http_tfs_segment_head_t));


    seg_count = t->seg_head->count + 1;
    max_seg_count = (b->last - (u_char *) seg_info)
                    / sizeof(ngx_http_tfs_segment_info_t);
    if (t->seg_head->count > max_seg_count) {
        ngx_log_error(NGX_LOG_ERR, t->log, 0,
                      "seg_count in seg_head larger than max seg_count, "
                      "%uD > %uD, seg_head may be corrupted",
                      t->seg_head->count, max_seg_count);
        seg_count = max_seg_count;
    }

    t->file.segment_data = ngx_http_tfs_prealloc(t->pool, t->file.segment_data,
                              sizeof(ngx_http_tfs_segment_data_t),
                              sizeof(ngx_http_tfs_segment_data_t) * seg_count);
    if (t->file.segment_data == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memzero(&t->file.segment_data[1],
                sizeof(ngx_http_tfs_segment_data_t) * (seg_count - 1));

    t->file.segment_index = 0;
    t->file.segment_count = seg_count;

    for (i = 1; i < t->file.segment_count; i++) {
        t->file.segment_data[i].segment_info = seg_info[i-1];
    }
    return NGX_OK;
}
