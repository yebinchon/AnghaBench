
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_8__ {scalar_t__ len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef size_t ngx_int_t ;
struct TYPE_9__ {int utf8; scalar_t__ length; TYPE_1__ name; int * tables; } ;
typedef TYPE_2__ ngx_http_charset_t ;
struct TYPE_10__ {size_t nelts; TYPE_2__* elts; } ;
typedef TYPE_3__ ngx_array_t ;


 size_t NGX_ERROR ;
 TYPE_2__* ngx_array_push (TYPE_3__*) ;
 scalar_t__ ngx_strcasecmp (int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_add_charset(ngx_array_t *charsets, ngx_str_t *name)
{
    ngx_uint_t i;
    ngx_http_charset_t *c;

    c = charsets->elts;
    for (i = 0; i < charsets->nelts; i++) {
        if (name->len != c[i].name.len) {
            continue;
        }

        if (ngx_strcasecmp(name->data, c[i].name.data) == 0) {
            break;
        }
    }

    if (i < charsets->nelts) {
        return i;
    }

    c = ngx_array_push(charsets);
    if (c == ((void*)0)) {
        return NGX_ERROR;
    }

    c->tables = ((void*)0);
    c->name = *name;
    c->length = 0;

    if (ngx_strcasecmp(name->data, (u_char *) "utf-8") == 0) {
        c->utf8 = 1;

    } else {
        c->utf8 = 0;
    }

    return i;
}
