
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int * elts; } ;
typedef TYPE_1__ ngx_array_t ;


 void* ngx_array_push_n (TYPE_1__*,size_t) ;

void *
ngx_http_script_add_code(ngx_array_t *codes, size_t size, void *code)
{
    u_char *elts, **p;
    void *new;

    elts = codes->elts;

    new = ngx_array_push_n(codes, size);
    if (new == ((void*)0)) {
        return ((void*)0);
    }

    if (code) {
        if (elts != codes->elts) {
            p = code;
            *p += (u_char *) codes->elts - elts;
        }
    }

    return new;
}
