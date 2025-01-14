
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_char ;
typedef int ngx_uint_t ;
struct TYPE_3__ {size_t* last; size_t* pos; scalar_t__ in_file; } ;
typedef TYPE_1__ ngx_buf_t ;



__attribute__((used)) static ngx_uint_t
ngx_http_charset_recode(ngx_buf_t *b, u_char *table)
{
    u_char *p, *last;

    last = b->last;

    for (p = b->pos; p < last; p++) {

        if (*p != table[*p]) {
            goto recode;
        }
    }

    return 0;

recode:

    do {
        if (*p != table[*p]) {
            *p = table[*p];
        }

        p++;

    } while (p < last);

    b->in_file = 0;

    return 1;
}
