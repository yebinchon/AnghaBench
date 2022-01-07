
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_10__ {scalar_t__ len; int data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_md5_t ;
struct TYPE_11__ {TYPE_2__* connection; TYPE_5__* cache; } ;
typedef TYPE_4__ ngx_http_request_t ;
typedef int ngx_http_file_cache_key ;
typedef int ngx_http_file_cache_header_t ;
struct TYPE_8__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_12__ {int header_start; int key; int main; int crc32; TYPE_1__ keys; } ;
typedef TYPE_5__ ngx_http_cache_t ;
struct TYPE_9__ {int log; } ;


 int NGX_HTTP_CACHE_KEY_LEN ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_crc32_final (int ) ;
 int ngx_crc32_init (int ) ;
 int ngx_crc32_update (int *,int ,scalar_t__) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_3__*) ;
 int ngx_md5_final (int ,int *) ;
 int ngx_md5_init (int *) ;
 int ngx_md5_update (int *,int ,scalar_t__) ;
 int ngx_memcpy (int ,int ,int ) ;

void
ngx_http_file_cache_create_key(ngx_http_request_t *r)
{
    size_t len;
    ngx_str_t *key;
    ngx_uint_t i;
    ngx_md5_t md5;
    ngx_http_cache_t *c;

    c = r->cache;

    len = 0;

    ngx_crc32_init(c->crc32);
    ngx_md5_init(&md5);

    key = c->keys.elts;
    for (i = 0; i < c->keys.nelts; i++) {
        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "http cache key: \"%V\"", &key[i]);

        len += key[i].len;

        ngx_crc32_update(&c->crc32, key[i].data, key[i].len);
        ngx_md5_update(&md5, key[i].data, key[i].len);
    }

    c->header_start = sizeof(ngx_http_file_cache_header_t)
                      + sizeof(ngx_http_file_cache_key) + len + 1;

    ngx_crc32_final(c->crc32);
    ngx_md5_final(c->key, &md5);

    ngx_memcpy(c->main, c->key, NGX_HTTP_CACHE_KEY_LEN);
}
