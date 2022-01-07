
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int u_char ;
typedef int ssize_t ;
typedef int ngx_slab_pool_t ;
typedef int ngx_pool_t ;
typedef size_t ngx_int_t ;
struct TYPE_5__ {size_t area; TYPE_1__* server; } ;
typedef TYPE_2__ ngx_http_tfs_tair_server_addr_info_t ;
struct TYPE_4__ {int len; int * data; } ;


 size_t NGX_ERROR ;
 size_t NGX_HTTP_TFS_TAIR_SERVER_ADDR_PART_COUNT ;
 size_t NGX_OK ;
 int memcpy (int *,int *,int) ;
 size_t ngx_atoi (int *,int) ;
 int * ngx_pcalloc (int *,int) ;
 int * ngx_slab_alloc_locked (int *,int) ;
 int * ngx_strlchr (int *,int *,char) ;

ngx_int_t
ngx_http_tfs_parse_tair_server_addr_info(
    ngx_http_tfs_tair_server_addr_info_t *info,
    u_char *addr, uint32_t len, void *pool, uint8_t shared_memory)
{
    u_char *temp, *p;
    ssize_t info_size;
    ngx_int_t i;

    p = addr;

    for (i = 0; i < NGX_HTTP_TFS_TAIR_SERVER_ADDR_PART_COUNT; i++) {
        temp = ngx_strlchr(p, p + len, ';');
        if (temp == ((void*)0)) {
            return NGX_ERROR;
        }

        info_size = temp - p;
        if (shared_memory) {
            info->server[i].data =
                ngx_slab_alloc_locked((ngx_slab_pool_t *)pool, info_size);
        } else {
            info->server[i].data = ngx_pcalloc((ngx_pool_t *)pool, info_size);
        }
        if (info->server[i].data == ((void*)0)) {
            return NGX_ERROR;
        }
        info->server[i].len = info_size;
        memcpy(info->server[i].data, p, info_size);

        p += info_size + 1;
        len -= (info_size + 1);
        if (len <= 0) {
            return NGX_ERROR;
        }
    }

    info->area = ngx_atoi(p, len);
    if (info->area == NGX_ERROR) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
