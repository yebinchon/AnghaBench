
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_12__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_stream_session_t ;
struct TYPE_13__ {size_t nregex; TYPE_4__* regex; int hash; } ;
typedef TYPE_3__ ngx_stream_map_t ;
struct TYPE_14__ {void* value; int regex; } ;
typedef TYPE_4__ ngx_stream_map_regex_t ;
struct TYPE_15__ {size_t len; int data; } ;
typedef TYPE_5__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {int pool; } ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_OK ;
 void* ngx_hash_find_combined (int *,size_t,int *,size_t) ;
 size_t ngx_hash_strlow (int *,int ,size_t) ;
 int * ngx_pnalloc (int ,size_t) ;
 scalar_t__ ngx_stream_regex_exec (TYPE_2__*,int ,TYPE_5__*) ;

void *
ngx_stream_map_find(ngx_stream_session_t *s, ngx_stream_map_t *map,
    ngx_str_t *match)
{
    void *value;
    u_char *low;
    size_t len;
    ngx_uint_t key;

    len = match->len;

    if (len) {
        low = ngx_pnalloc(s->connection->pool, len);
        if (low == ((void*)0)) {
            return ((void*)0);
        }

    } else {
        low = ((void*)0);
    }

    key = ngx_hash_strlow(low, match->data, len);

    value = ngx_hash_find_combined(&map->hash, key, low, len);
    if (value) {
        return value;
    }
    return ((void*)0);
}
