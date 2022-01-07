
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_14__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct TYPE_25__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
typedef size_t ngx_uint_t ;
struct TYPE_30__ {int * buckets; } ;
struct TYPE_32__ {TYPE_9__* wc_tail; TYPE_7__* wc_head; TYPE_6__ hash; } ;
struct TYPE_20__ {TYPE_8__ names; } ;
typedef TYPE_10__ ngx_stream_virtual_names_t ;
struct TYPE_21__ {int naddrs; TYPE_12__* addrs; } ;
typedef TYPE_11__ ngx_stream_port_t ;
struct TYPE_29__ {TYPE_10__* virtual_names; int default_server; int addr_text; int proxy_protocol; int ssl; int ctx; } ;
struct TYPE_22__ {TYPE_5__ conf; int addr; } ;
typedef TYPE_12__ ngx_stream_in_addr_t ;
struct TYPE_26__ {int addr_text; int proxy_protocol; int ssl; int ctx; scalar_t__ sockaddr; } ;
struct TYPE_23__ {TYPE_9__* wc_tail; TYPE_7__* wc_head; TYPE_6__ hash; int default_server; TYPE_2__ opt; } ;
typedef TYPE_13__ ngx_stream_conf_addr_t ;
typedef int ngx_int_t ;
struct TYPE_24__ {int pool; } ;
typedef TYPE_14__ ngx_conf_t ;
struct TYPE_28__ {int * buckets; } ;
struct TYPE_33__ {TYPE_4__ hash; } ;
struct TYPE_27__ {int * buckets; } ;
struct TYPE_31__ {TYPE_3__ hash; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_10__* ngx_palloc (int ,int) ;
 TYPE_12__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_stream_add_addrs(ngx_conf_t *cf, ngx_stream_port_t *stport,
    ngx_stream_conf_addr_t *addr)
{
    ngx_uint_t i;
    struct sockaddr_in *sin;
    ngx_stream_in_addr_t *addrs;




    stport->addrs = ngx_pcalloc(cf->pool,
                                stport->naddrs * sizeof(ngx_stream_in_addr_t));
    if (stport->addrs == ((void*)0)) {
        return NGX_ERROR;
    }

    addrs = stport->addrs;

    for (i = 0; i < stport->naddrs; i++) {

        sin = (struct sockaddr_in *) addr[i].opt.sockaddr;
        addrs[i].addr = sin->sin_addr.s_addr;

        addrs[i].conf.ctx = addr[i].opt.ctx;



        addrs[i].conf.proxy_protocol = addr[i].opt.proxy_protocol;
        addrs[i].conf.addr_text = addr[i].opt.addr_text;
    }

    return NGX_OK;
}
