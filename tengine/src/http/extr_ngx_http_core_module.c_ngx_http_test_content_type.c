
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_8__ {scalar_t__ len; int * data; } ;
struct TYPE_9__ {size_t content_type_len; size_t content_type_hash; int * content_type_lowcase; TYPE_1__ content_type; } ;
struct TYPE_10__ {TYPE_2__ headers_out; int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_11__ {scalar_t__ size; } ;
typedef TYPE_4__ ngx_hash_t ;


 size_t ngx_hash (size_t,int ) ;
 void* ngx_hash_find (TYPE_4__*,size_t,int *,size_t) ;
 int * ngx_pnalloc (int ,size_t) ;
 int ngx_tolower (int ) ;

void *
ngx_http_test_content_type(ngx_http_request_t *r, ngx_hash_t *types_hash)
{
    u_char c, *lowcase;
    size_t len;
    ngx_uint_t i, hash;

    if (types_hash->size == 0) {
        return (void *) 4;
    }

    if (r->headers_out.content_type.len == 0) {
        return ((void*)0);
    }

    len = r->headers_out.content_type_len;

    if (r->headers_out.content_type_lowcase == ((void*)0)) {

        lowcase = ngx_pnalloc(r->pool, len);
        if (lowcase == ((void*)0)) {
            return ((void*)0);
        }

        r->headers_out.content_type_lowcase = lowcase;

        hash = 0;

        for (i = 0; i < len; i++) {
            c = ngx_tolower(r->headers_out.content_type.data[i]);
            hash = ngx_hash(hash, c);
            lowcase[i] = c;
        }

        r->headers_out.content_type_hash = hash;
    }

    return ngx_hash_find(types_hash, r->headers_out.content_type_hash,
                         r->headers_out.content_type_lowcase, len);
}
