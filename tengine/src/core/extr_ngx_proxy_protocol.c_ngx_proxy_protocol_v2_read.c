
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
typedef int socklen_t ;
typedef int ngx_uint_t ;
struct TYPE_11__ {int sin6_addr; int sin6_port; int sin6_family; } ;
struct TYPE_10__ {int sin_addr; int sin_port; int sin_family; } ;
struct TYPE_12__ {int sockaddr; TYPE_2__ sockaddr_in6; TYPE_1__ sockaddr_in; } ;
typedef TYPE_3__ ngx_sockaddr_t ;
struct TYPE_13__ {int src_port; int src_addr; } ;
typedef TYPE_4__ ngx_proxy_protocol_inet_addrs_t ;
struct TYPE_14__ {int src_port; int src_addr; } ;
typedef TYPE_5__ ngx_proxy_protocol_inet6_addrs_t ;
struct TYPE_15__ {int version_command; int family_transport; int len; } ;
typedef TYPE_6__ ngx_proxy_protocol_header_t ;
struct TYPE_17__ {int * data; int len; } ;
struct TYPE_16__ {int log; void* proxy_protocol_port; TYPE_9__ proxy_protocol_addr; int pool; } ;
typedef TYPE_7__ ngx_connection_t ;


 int AF_INET ;
 int AF_INET6 ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_LOG_ERR ;


 int NGX_SOCKADDR_STRLEN ;
 int memcpy (int *,int ,int) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_9__*,void*) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int * ngx_pnalloc (int ,int ) ;
 void* ngx_proxy_protocol_parse_uint16 (int ) ;
 int ngx_sock_ntop (int *,int,int *,int ,int ) ;

__attribute__((used)) static u_char *
ngx_proxy_protocol_v2_read(ngx_connection_t *c, u_char *buf, u_char *last)
{
    u_char *end;
    size_t len;
    socklen_t socklen;
    ngx_uint_t version, command, family, transport;
    ngx_sockaddr_t sockaddr;
    ngx_proxy_protocol_header_t *header;
    ngx_proxy_protocol_inet_addrs_t *in;




    header = (ngx_proxy_protocol_header_t *) buf;

    buf += sizeof(ngx_proxy_protocol_header_t);

    version = header->version_command >> 4;

    if (version != 2) {
        ngx_log_error(NGX_LOG_ERR, c->log, 0,
                      "unknown PROXY protocol version: %ui", version);
        return ((void*)0);
    }

    len = ngx_proxy_protocol_parse_uint16(header->len);

    if ((size_t) (last - buf) < len) {
        ngx_log_error(NGX_LOG_ERR, c->log, 0, "header is too large");
        return ((void*)0);
    }

    end = buf + len;

    command = header->version_command & 0x0f;


    if (command != 1) {
        ngx_log_debug1(NGX_LOG_DEBUG_CORE, c->log, 0,
                       "PROXY protocol v2 unsupported command %ui", command);
        return end;
    }

    transport = header->family_transport & 0x0f;


    if (transport != 1) {
        ngx_log_debug1(NGX_LOG_DEBUG_CORE, c->log, 0,
                       "PROXY protocol v2 unsupported transport %ui",
                       transport);
        return end;
    }

    family = header->family_transport >> 4;

    switch (family) {

    case 129:

        if ((size_t) (end - buf) < sizeof(ngx_proxy_protocol_inet_addrs_t)) {
            return ((void*)0);
        }

        in = (ngx_proxy_protocol_inet_addrs_t *) buf;

        sockaddr.sockaddr_in.sin_family = AF_INET;
        sockaddr.sockaddr_in.sin_port = 0;
        memcpy(&sockaddr.sockaddr_in.sin_addr, in->src_addr, 4);

        c->proxy_protocol_port = ngx_proxy_protocol_parse_uint16(in->src_port);

        socklen = sizeof(struct sockaddr_in);

        buf += sizeof(ngx_proxy_protocol_inet_addrs_t);

        break;
    default:
        ngx_log_debug1(NGX_LOG_DEBUG_CORE, c->log, 0,
                       "PROXY protocol v2 unsupported address family %ui",
                       family);
        return end;
    }

    c->proxy_protocol_addr.data = ngx_pnalloc(c->pool, NGX_SOCKADDR_STRLEN);
    if (c->proxy_protocol_addr.data == ((void*)0)) {
        return ((void*)0);
    }

    c->proxy_protocol_addr.len = ngx_sock_ntop(&sockaddr.sockaddr, socklen,
                                               c->proxy_protocol_addr.data,
                                               NGX_SOCKADDR_STRLEN, 0);

    ngx_log_debug2(NGX_LOG_DEBUG_CORE, c->log, 0,
                   "PROXY protocol v2 address: %V %d", &c->proxy_protocol_addr,
                   c->proxy_protocol_port);

    if (buf < end) {
        ngx_log_debug1(NGX_LOG_DEBUG_CORE, c->log, 0,
                       "PROXY protocol v2 %z bytes of tlv ignored", end - buf);
    }

    return end;
}
