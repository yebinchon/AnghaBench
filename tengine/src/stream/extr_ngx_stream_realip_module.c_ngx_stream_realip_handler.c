
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* connection; } ;
typedef TYPE_2__ ngx_stream_session_t ;
struct TYPE_14__ {int * from; } ;
typedef TYPE_3__ ngx_stream_realip_srv_conf_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {scalar_t__ len; int data; } ;
struct TYPE_15__ {int proxy_protocol_port; TYPE_1__ proxy_protocol_addr; int pool; int sockaddr; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_16__ {int sockaddr; } ;
typedef TYPE_5__ ngx_addr_t ;


 int NGX_DECLINED ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_cidr_match (int ,int *) ;
 int ngx_inet_set_port (int ,int ) ;
 scalar_t__ ngx_parse_addr (int ,TYPE_5__*,int ,scalar_t__) ;
 TYPE_3__* ngx_stream_get_module_srv_conf (TYPE_2__*,int ) ;
 int ngx_stream_realip_module ;
 int ngx_stream_realip_set_addr (TYPE_2__*,TYPE_5__*) ;

__attribute__((used)) static ngx_int_t
ngx_stream_realip_handler(ngx_stream_session_t *s)
{
    ngx_addr_t addr;
    ngx_connection_t *c;
    ngx_stream_realip_srv_conf_t *rscf;

    rscf = ngx_stream_get_module_srv_conf(s, ngx_stream_realip_module);

    if (rscf->from == ((void*)0)) {
        return NGX_DECLINED;
    }

    c = s->connection;

    if (c->proxy_protocol_addr.len == 0) {
        return NGX_DECLINED;
    }

    if (ngx_cidr_match(c->sockaddr, rscf->from) != NGX_OK) {
        return NGX_DECLINED;
    }

    if (ngx_parse_addr(c->pool, &addr, c->proxy_protocol_addr.data,
                       c->proxy_protocol_addr.len)
        != NGX_OK)
    {
        return NGX_DECLINED;
    }

    ngx_inet_set_port(addr.sockaddr, c->proxy_protocol_port);

    return ngx_stream_realip_set_addr(s, &addr);
}
