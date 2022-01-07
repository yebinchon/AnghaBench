
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_9__ {int len; char* data; } ;
struct TYPE_7__ {TYPE_4__ value; scalar_t__ hash; } ;
typedef TYPE_2__ ngx_table_elt_t ;
struct TYPE_6__ {TYPE_2__* etag; } ;
struct TYPE_8__ {TYPE_1__ headers_out; int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;


 char* ngx_pnalloc (int ,int) ;
 char* ngx_sprintf (char*,char*,TYPE_4__*) ;

void
ngx_http_weak_etag(ngx_http_request_t *r)
{
    size_t len;
    u_char *p;
    ngx_table_elt_t *etag;

    etag = r->headers_out.etag;

    if (etag == ((void*)0)) {
        return;
    }

    if (etag->value.len > 2
        && etag->value.data[0] == 'W'
        && etag->value.data[1] == '/')
    {
        return;
    }

    if (etag->value.len < 1 || etag->value.data[0] != '"') {
        r->headers_out.etag->hash = 0;
        r->headers_out.etag = ((void*)0);
        return;
    }

    p = ngx_pnalloc(r->pool, etag->value.len + 2);
    if (p == ((void*)0)) {
        r->headers_out.etag->hash = 0;
        r->headers_out.etag = ((void*)0);
        return;
    }

    len = ngx_sprintf(p, "W/%V", &etag->value) - p;

    etag->value.data = p;
    etag->value.len = len;
}
