
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_10__ {int len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_pool_t ;
struct TYPE_11__ {size_t nelts; TYPE_1__* elts; } ;
typedef TYPE_2__ ngx_array_t ;
struct TYPE_12__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 TYPE_2__* ngx_array_create (int *,int,int) ;
 TYPE_1__* ngx_array_push (TYPE_2__*) ;
 TYPE_6__* ngx_cycle ;
 int ngx_log_debug2 (int ,int ,int ,char*,size_t,TYPE_1__*) ;
 int * ngx_strlchr (int *,int *,char) ;

ngx_array_t *
ngx_dyups_parse_path(ngx_pool_t *pool, ngx_str_t *path)
{
    u_char *p, *last, *end;
    ngx_str_t *str;
    ngx_array_t *array;

    array = ngx_array_create(pool, 8, sizeof(ngx_str_t));
    if (array == ((void*)0)) {
        return ((void*)0);
    }

    p = path->data + 1;
    last = path->data + path->len;

    while(p < last) {
        end = ngx_strlchr(p, last, '/');
        str = ngx_array_push(array);

        if (str == ((void*)0)) {
            return ((void*)0);
        }

        if (end) {
            str->data = p;
            str->len = end - p;

        } else {
            str->data = p;
            str->len = last - p;

        }

        p += str->len + 1;
    }
    return array;
}
