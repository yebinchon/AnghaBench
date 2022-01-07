
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_15__ {TYPE_3__* addrs; } ;
typedef TYPE_4__ ngx_http_upstream_server_t ;
struct TYPE_16__ {int pool; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_17__ {TYPE_2__* upstream; } ;
typedef TYPE_6__ ngx_http_dyups_srv_conf_t ;
struct TYPE_18__ {int last; } ;
typedef TYPE_7__ ngx_buf_t ;
struct TYPE_14__ {int name; } ;
struct TYPE_13__ {TYPE_1__* servers; } ;
struct TYPE_12__ {size_t nelts; TYPE_4__* elts; } ;


 TYPE_7__* ngx_create_temp_buf (int ,size_t) ;
 int ngx_sprintf (int ,char*,int *) ;

__attribute__((used)) static ngx_buf_t *
ngx_http_dyups_show_upstream(ngx_http_request_t *r,
    ngx_http_dyups_srv_conf_t *duscf)
{
    ngx_uint_t i, len;
    ngx_buf_t *buf;
    ngx_http_upstream_server_t *us;

    len = 0;
    for (i = 0; i < duscf->upstream->servers->nelts; i++) {
        len += sizeof("server ") + 81;
    }

    buf = ngx_create_temp_buf(r->pool, len);
    if (buf == ((void*)0)) {
        return ((void*)0);
    }

    us = duscf->upstream->servers->elts;
    for (i = 0; i < duscf->upstream->servers->nelts; i++) {
        buf->last = ngx_sprintf(buf->last, "server %V\n",
                                &us[i].addrs->name);
    }

    return buf;
}
