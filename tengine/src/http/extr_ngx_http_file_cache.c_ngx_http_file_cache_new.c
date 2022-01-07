
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_9__ {TYPE_1__* connection; TYPE_4__* cache; int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_8__ {int fd; int log; } ;
struct TYPE_10__ {TYPE_2__ file; int keys; } ;
typedef TYPE_4__ ngx_http_cache_t ;
struct TYPE_7__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_INVALID_FILE ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (int *,int ,int,int) ;
 TYPE_4__* ngx_pcalloc (int ,int) ;

ngx_int_t
ngx_http_file_cache_new(ngx_http_request_t *r)
{
    ngx_http_cache_t *c;

    c = ngx_pcalloc(r->pool, sizeof(ngx_http_cache_t));
    if (c == ((void*)0)) {
        return NGX_ERROR;
    }

    if (ngx_array_init(&c->keys, r->pool, 4, sizeof(ngx_str_t)) != NGX_OK) {
        return NGX_ERROR;
    }

    r->cache = c;
    c->file.log = r->connection->log;
    c->file.fd = NGX_INVALID_FILE;

    return NGX_OK;
}
