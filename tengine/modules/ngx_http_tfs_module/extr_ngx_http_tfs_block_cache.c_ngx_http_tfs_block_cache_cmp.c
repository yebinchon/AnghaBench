
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_4__ {scalar_t__ ns_addr; scalar_t__ block_id; } ;
typedef TYPE_1__ ngx_http_tfs_block_cache_key_t ;



ngx_int_t
ngx_http_tfs_block_cache_cmp(ngx_http_tfs_block_cache_key_t *left,
    ngx_http_tfs_block_cache_key_t *right)
{
    if (left->ns_addr == right->ns_addr) {

        if (left->block_id == right->block_id) {
            return 0;
        }

        if (left->block_id < right->block_id) {
            return -1;
        }

        return 1;
    }

    if (left->ns_addr < right->ns_addr) {
        return -1;
    }

    return 1;
}
