
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_34__ {int len; } ;
struct TYPE_32__ {size_t len; } ;
struct TYPE_33__ {size_t hash; TYPE_7__ value; int lowcase_key; TYPE_5__ key; } ;
typedef TYPE_6__ ngx_table_elt_t ;
typedef TYPE_7__ ngx_str_t ;
struct TYPE_35__ {size_t nelts; TYPE_6__* elts; struct TYPE_35__* next; } ;
typedef TYPE_8__ ngx_list_part_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_29__ {TYPE_8__ part; } ;
struct TYPE_26__ {int * elts; } ;
struct TYPE_30__ {TYPE_2__ headers; TYPE_12__ x_forwarded_for; TYPE_1__* x_real_ip; } ;
struct TYPE_36__ {TYPE_11__* connection; TYPE_3__ headers_in; } ;
typedef TYPE_9__ ngx_http_request_t ;
struct TYPE_31__ {size_t len; int * data; } ;
struct TYPE_24__ {int type; size_t hash; int recursive; int * from; TYPE_4__ header; } ;
typedef TYPE_10__ ngx_http_realip_loc_conf_t ;
typedef int ngx_http_realip_ctx_t ;
struct TYPE_25__ {int proxy_protocol_port; int socklen; int sockaddr; TYPE_7__ proxy_protocol_addr; } ;
typedef TYPE_11__ ngx_connection_t ;
typedef TYPE_12__ ngx_array_t ;
struct TYPE_27__ {int sockaddr; int socklen; } ;
typedef TYPE_13__ ngx_addr_t ;
struct TYPE_28__ {TYPE_7__ value; } ;


 scalar_t__ NGX_DECLINED ;



 scalar_t__ ngx_http_get_forwarded_addr (TYPE_9__*,TYPE_13__*,TYPE_12__*,TYPE_7__*,int *,int ) ;
 TYPE_10__* ngx_http_get_module_loc_conf (TYPE_9__*,int ) ;
 int * ngx_http_realip_get_module_ctx (TYPE_9__*) ;
 int ngx_http_realip_module ;
 scalar_t__ ngx_http_realip_set_addr (TYPE_9__*,TYPE_13__*) ;
 int ngx_inet_set_port (int ,int ) ;
 int ngx_strncmp (int *,int ,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_http_realip_handler(ngx_http_request_t *r)
{
    u_char *p;
    size_t len;
    ngx_str_t *value;
    ngx_uint_t i, hash;
    ngx_addr_t addr;
    ngx_array_t *xfwd;
    ngx_list_part_t *part;
    ngx_table_elt_t *header;
    ngx_connection_t *c;
    ngx_http_realip_ctx_t *ctx;
    ngx_http_realip_loc_conf_t *rlcf;

    rlcf = ngx_http_get_module_loc_conf(r, ngx_http_realip_module);

    if (rlcf->from == ((void*)0)) {
        return NGX_DECLINED;
    }

    ctx = ngx_http_realip_get_module_ctx(r);

    if (ctx) {
        return NGX_DECLINED;
    }

    switch (rlcf->type) {

    case 128:

        if (r->headers_in.x_real_ip == ((void*)0)) {
            return NGX_DECLINED;
        }

        value = &r->headers_in.x_real_ip->value;
        xfwd = ((void*)0);

        break;

    case 129:

        xfwd = &r->headers_in.x_forwarded_for;

        if (xfwd->elts == ((void*)0)) {
            return NGX_DECLINED;
        }

        value = ((void*)0);

        break;

    case 130:

        value = &r->connection->proxy_protocol_addr;

        if (value->len == 0) {
            return NGX_DECLINED;
        }

        xfwd = ((void*)0);

        break;

    default:

        part = &r->headers_in.headers.part;
        header = part->elts;

        hash = rlcf->hash;
        len = rlcf->header.len;
        p = rlcf->header.data;

        for (i = 0; ; i++) {

            if (i >= part->nelts) {
                if (part->next == ((void*)0)) {
                    break;
                }

                part = part->next;
                header = part->elts;
                i = 0;
            }

            if (hash == header[i].hash
                && len == header[i].key.len
                && ngx_strncmp(p, header[i].lowcase_key, len) == 0)
            {
                value = &header[i].value;
                xfwd = ((void*)0);

                goto found;
            }
        }

        return NGX_DECLINED;
    }

found:

    c = r->connection;

    addr.sockaddr = c->sockaddr;
    addr.socklen = c->socklen;


    if (ngx_http_get_forwarded_addr(r, &addr, xfwd, value, rlcf->from,
                                    rlcf->recursive)
        != NGX_DECLINED)
    {
        if (rlcf->type == 130) {
            ngx_inet_set_port(addr.sockaddr, c->proxy_protocol_port);
        }

        return ngx_http_realip_set_addr(r, &addr);
    }

    return NGX_DECLINED;
}
