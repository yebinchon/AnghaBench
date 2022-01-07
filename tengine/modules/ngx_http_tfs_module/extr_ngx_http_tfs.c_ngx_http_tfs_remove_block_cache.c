
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int retry_curr_ns; int log; int pool; int block_cache_ctx; int name_server_addr; } ;
typedef TYPE_2__ ngx_http_tfs_t ;
struct TYPE_8__ {int block_id; } ;
struct TYPE_10__ {int cache_hit; TYPE_1__ segment_info; } ;
typedef TYPE_3__ ngx_http_tfs_segment_data_t ;
struct TYPE_11__ {int block_id; int ns_addr; } ;
typedef TYPE_4__ ngx_http_tfs_block_cache_key_t ;
typedef int int64_t ;


 int NGX_HTTP_TFS_NO_BLOCK_CACHE ;
 int NGX_HTTP_TFS_YES ;
 int ngx_http_tfs_block_cache_remove (int *,int ,int ,TYPE_4__*,int ) ;

void
ngx_http_tfs_remove_block_cache(ngx_http_tfs_t *t,
    ngx_http_tfs_segment_data_t *segment_data)
{
    ngx_http_tfs_block_cache_key_t key;

    key.ns_addr = *((int64_t *)(&t->name_server_addr));
    key.block_id = segment_data->segment_info.block_id;
    ngx_http_tfs_block_cache_remove(&t->block_cache_ctx, t->pool, t->log,
                                    &key, segment_data->cache_hit);


    if (segment_data->cache_hit != NGX_HTTP_TFS_NO_BLOCK_CACHE) {
        t->retry_curr_ns = NGX_HTTP_TFS_YES;
    }

    segment_data->cache_hit = NGX_HTTP_TFS_NO_BLOCK_CACHE;
}
