
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_31__ {scalar_t__ len; } ;
struct TYPE_30__ {int len; int data; } ;
struct TYPE_32__ {TYPE_4__ value; TYPE_3__ key; } ;
typedef TYPE_5__ ngx_keyval_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_33__ {int len; scalar_t__ code; } ;
typedef TYPE_6__ ngx_http_script_copy_code_t ;
struct TYPE_34__ {int ** values; int ** lengths; int * flushes; TYPE_4__* source; TYPE_12__* cf; } ;
typedef TYPE_7__ ngx_http_script_compile_t ;
typedef scalar_t__ ngx_http_script_code_pt ;
struct TYPE_35__ {int headers_hash_bucket_size; int headers_hash_max_size; TYPE_2__* headers_source; } ;
typedef TYPE_8__ ngx_http_proxy_loc_conf_t ;
struct TYPE_28__ {scalar_t__ buckets; } ;
struct TYPE_36__ {TYPE_1__ hash; int * lengths; int * values; int flushes; } ;
typedef TYPE_9__ ngx_http_proxy_headers_t ;
struct TYPE_24__ {void* value; int key_hash; TYPE_3__ key; } ;
typedef TYPE_10__ ngx_hash_key_t ;
struct TYPE_25__ {char* name; int * temp_pool; int pool; int bucket_size; int max_size; int (* key ) (int ,int) ;TYPE_1__* hash; } ;
typedef TYPE_11__ ngx_hash_init_t ;
struct TYPE_26__ {int pool; int temp_pool; } ;
typedef TYPE_12__ ngx_conf_t ;
struct TYPE_27__ {size_t nelts; TYPE_5__* elts; } ;
typedef TYPE_13__ ngx_array_t ;
struct TYPE_29__ {size_t nelts; TYPE_5__* elts; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 void* ngx_array_create (int ,int,int) ;
 scalar_t__ ngx_array_init (TYPE_13__*,int ,int,int) ;
 void* ngx_array_push (TYPE_13__*) ;
 void* ngx_array_push_n (int *,int) ;
 scalar_t__ ngx_hash_init (TYPE_11__*,TYPE_5__*,size_t) ;
 int ngx_hash_key_lc (int ,int) ;
 scalar_t__ ngx_http_script_compile (TYPE_7__*) ;
 scalar_t__ ngx_http_script_copy_code ;
 scalar_t__ ngx_http_script_copy_len_code ;
 int ngx_memcpy (int *,int ,int) ;
 int ngx_memzero (TYPE_7__*,int) ;
 scalar_t__ ngx_strcasecmp (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_init_headers(ngx_conf_t *cf, ngx_http_proxy_loc_conf_t *conf,
    ngx_http_proxy_headers_t *headers, ngx_keyval_t *default_headers)
{
    u_char *p;
    size_t size;
    uintptr_t *code;
    ngx_uint_t i;
    ngx_array_t headers_names, headers_merged;
    ngx_keyval_t *src, *s, *h;
    ngx_hash_key_t *hk;
    ngx_hash_init_t hash;
    ngx_http_script_compile_t sc;
    ngx_http_script_copy_code_t *copy;

    if (headers->hash.buckets) {
        return NGX_OK;
    }

    if (ngx_array_init(&headers_names, cf->temp_pool, 4, sizeof(ngx_hash_key_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (ngx_array_init(&headers_merged, cf->temp_pool, 4, sizeof(ngx_keyval_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    headers->lengths = ngx_array_create(cf->pool, 64, 1);
    if (headers->lengths == ((void*)0)) {
        return NGX_ERROR;
    }

    headers->values = ngx_array_create(cf->pool, 512, 1);
    if (headers->values == ((void*)0)) {
        return NGX_ERROR;
    }

    if (conf->headers_source) {

        src = conf->headers_source->elts;
        for (i = 0; i < conf->headers_source->nelts; i++) {

            s = ngx_array_push(&headers_merged);
            if (s == ((void*)0)) {
                return NGX_ERROR;
            }

            *s = src[i];
        }
    }

    h = default_headers;

    while (h->key.len) {

        src = headers_merged.elts;
        for (i = 0; i < headers_merged.nelts; i++) {
            if (ngx_strcasecmp(h->key.data, src[i].key.data) == 0) {
                goto next;
            }
        }

        s = ngx_array_push(&headers_merged);
        if (s == ((void*)0)) {
            return NGX_ERROR;
        }

        *s = *h;

    next:

        h++;
    }


    src = headers_merged.elts;
    for (i = 0; i < headers_merged.nelts; i++) {

        hk = ngx_array_push(&headers_names);
        if (hk == ((void*)0)) {
            return NGX_ERROR;
        }

        hk->key = src[i].key;
        hk->key_hash = ngx_hash_key_lc(src[i].key.data, src[i].key.len);
        hk->value = (void *) 1;

        if (src[i].value.len == 0) {
            continue;
        }

        copy = ngx_array_push_n(headers->lengths,
                                sizeof(ngx_http_script_copy_code_t));
        if (copy == ((void*)0)) {
            return NGX_ERROR;
        }

        copy->code = (ngx_http_script_code_pt) (void *)
                                                 ngx_http_script_copy_len_code;
        copy->len = src[i].key.len;

        size = (sizeof(ngx_http_script_copy_code_t)
                + src[i].key.len + sizeof(uintptr_t) - 1)
               & ~(sizeof(uintptr_t) - 1);

        copy = ngx_array_push_n(headers->values, size);
        if (copy == ((void*)0)) {
            return NGX_ERROR;
        }

        copy->code = ngx_http_script_copy_code;
        copy->len = src[i].key.len;

        p = (u_char *) copy + sizeof(ngx_http_script_copy_code_t);
        ngx_memcpy(p, src[i].key.data, src[i].key.len);

        ngx_memzero(&sc, sizeof(ngx_http_script_compile_t));

        sc.cf = cf;
        sc.source = &src[i].value;
        sc.flushes = &headers->flushes;
        sc.lengths = &headers->lengths;
        sc.values = &headers->values;

        if (ngx_http_script_compile(&sc) != NGX_OK) {
            return NGX_ERROR;
        }

        code = ngx_array_push_n(headers->lengths, sizeof(uintptr_t));
        if (code == ((void*)0)) {
            return NGX_ERROR;
        }

        *code = (uintptr_t) ((void*)0);

        code = ngx_array_push_n(headers->values, sizeof(uintptr_t));
        if (code == ((void*)0)) {
            return NGX_ERROR;
        }

        *code = (uintptr_t) ((void*)0);
    }

    code = ngx_array_push_n(headers->lengths, sizeof(uintptr_t));
    if (code == ((void*)0)) {
        return NGX_ERROR;
    }

    *code = (uintptr_t) ((void*)0);


    hash.hash = &headers->hash;
    hash.key = ngx_hash_key_lc;
    hash.max_size = conf->headers_hash_max_size;
    hash.bucket_size = conf->headers_hash_bucket_size;
    hash.name = "proxy_headers_hash";
    hash.pool = cf->pool;
    hash.temp_pool = ((void*)0);

    return ngx_hash_init(&hash, headers_names.elts, headers_names.nelts);
}
