
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef size_t ngx_uint_t ;
struct TYPE_21__ {size_t len; } ;
typedef TYPE_5__ ngx_str_t ;
struct TYPE_22__ {int down; int backup; int fail_timeout; int max_fails; int max_conns; int weight; TYPE_4__* addrs; } ;
typedef TYPE_6__ ngx_http_upstream_server_t ;
struct TYPE_23__ {int pool; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_24__ {TYPE_3__* upstream; scalar_t__ deleted; int dynamic; } ;
typedef TYPE_8__ ngx_http_dyups_srv_conf_t ;
struct TYPE_17__ {size_t nelts; TYPE_8__* elts; } ;
struct TYPE_25__ {TYPE_1__ dy_upstreams; } ;
typedef TYPE_9__ ngx_http_dyups_main_conf_t ;
struct TYPE_16__ {void* last; } ;
typedef TYPE_10__ ngx_buf_t ;
struct TYPE_20__ {int name; } ;
struct TYPE_19__ {TYPE_2__* servers; TYPE_5__ host; } ;
struct TYPE_18__ {size_t nelts; TYPE_6__* elts; } ;


 TYPE_10__* ngx_create_temp_buf (int ,size_t) ;
 int ngx_http_dyups_module ;
 TYPE_9__* ngx_http_get_module_main_conf (TYPE_7__*,int ) ;
 void* ngx_sprintf (void*,char*,...) ;

__attribute__((used)) static ngx_buf_t *
ngx_http_dyups_show_detail(ngx_http_request_t *r)
{
    ngx_uint_t i, j, len;
    ngx_str_t host;
    ngx_buf_t *buf;
    ngx_http_dyups_srv_conf_t *duscfs, *duscf;
    ngx_http_dyups_main_conf_t *dumcf;
    ngx_http_upstream_server_t *us;

    dumcf = ngx_http_get_module_main_conf(r, ngx_http_dyups_module);

    len = 0;
    duscfs = dumcf->dy_upstreams.elts;
    for (i = 0; i < dumcf->dy_upstreams.nelts; i++) {

        duscf = &duscfs[i];

        if (!duscf->dynamic) {
            continue;
        }

        if (duscf->deleted) {
            continue;
        }

        len += duscf->upstream->host.len + 1;

        for (j = 0; j < duscf->upstream->servers->nelts; j++) {
            len += sizeof("server ") + 256;
        }
    }

    buf = ngx_create_temp_buf(r->pool, len);
    if (buf == ((void*)0)) {
        return ((void*)0);
    }

    for (i = 0; i < dumcf->dy_upstreams.nelts; i++) {

        duscf = &duscfs[i];

        if (!duscf->dynamic) {
            continue;
        }

        if (duscf->deleted) {
            continue;
        }

        host = duscf->upstream->host;
        buf->last = ngx_sprintf(buf->last, "%V\n", &host);

        us = duscf->upstream->servers->elts;
        for (j = 0; j < duscf->upstream->servers->nelts; j++) {
            buf->last = ngx_sprintf(buf->last,
                                    "server %V weight=%i "



                                    "max_fails=%i "
                                    "fail_timeout=%T backup=%d down=%d\n",
                                    &us[j].addrs->name,
                                    us[j].weight,



                                    us[j].max_fails,
                                    us[j].fail_timeout,
                                    us[j].backup,
                                    us[j].down);
        }
        buf->last = ngx_sprintf(buf->last, "\n");
    }

    return buf;
}
