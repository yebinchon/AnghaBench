
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ len; int data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_19__ {TYPE_1__* connection; int pool; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_17__ {TYPE_7__* local; int transparent; } ;
struct TYPE_20__ {TYPE_2__ peer; } ;
typedef TYPE_5__ ngx_http_proxy_connect_upstream_t ;
struct TYPE_21__ {int * value; TYPE_7__* addr; int transparent; } ;
typedef TYPE_6__ ngx_http_proxy_connect_address_t ;
struct TYPE_22__ {TYPE_3__ name; } ;
typedef TYPE_7__ ngx_addr_t ;
struct TYPE_16__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ __ngx_parse_addr_port (int ,TYPE_7__*,int ,scalar_t__) ;
 scalar_t__ ngx_http_complex_value (TYPE_4__*,int *,TYPE_3__*) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_3__*) ;
 TYPE_7__* ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_connect_set_local(ngx_http_request_t *r,
    ngx_http_proxy_connect_upstream_t *u, ngx_http_proxy_connect_address_t *local)
{
    ngx_int_t rc;
    ngx_str_t val;
    ngx_addr_t *addr;

    if (local == ((void*)0)) {
        u->peer.local = ((void*)0);
        return NGX_OK;
    }





    if (local->value == ((void*)0)) {
        u->peer.local = local->addr;
        return NGX_OK;
    }

    if (ngx_http_complex_value(r, local->value, &val) != NGX_OK) {
        return NGX_ERROR;
    }

    if (val.len == 0) {
        return NGX_OK;
    }

    addr = ngx_palloc(r->pool, sizeof(ngx_addr_t));
    if (addr == ((void*)0)) {
        return NGX_ERROR;
    }

    rc = __ngx_parse_addr_port(r->pool, addr, val.data, val.len);
    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    if (rc != NGX_OK) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "proxy_connect: invalid local address \"%V\"", &val);
        return NGX_OK;
    }

    addr->name = val;
    u->peer.local = addr;

    return NGX_OK;
}
