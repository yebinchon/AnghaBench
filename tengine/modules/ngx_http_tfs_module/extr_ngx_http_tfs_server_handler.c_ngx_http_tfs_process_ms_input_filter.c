
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_4__ {int length; int log; scalar_t__ header; } ;
typedef TYPE_1__ ngx_http_tfs_t ;
struct TYPE_5__ {int len; } ;
typedef TYPE_2__ ngx_http_tfs_header_t ;


 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;

ngx_int_t
ngx_http_tfs_process_ms_input_filter(ngx_http_tfs_t *t)
{
    ngx_http_tfs_header_t *header;

    header = (ngx_http_tfs_header_t *) t->header;
    t->length = header->len;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, t->log, 0,
                   "ls dir len is %O",
                   t->length);

    return NGX_OK;
}
