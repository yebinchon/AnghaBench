
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr_in6 {void* sin6_port; } ;
struct TYPE_9__ {int socklen; int sockaddr; } ;
struct TYPE_8__ {TYPE_2__ s_addr; } ;
struct sockaddr_in {void* sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;
typedef size_t ngx_int_t ;
struct TYPE_10__ {size_t len; int * data; } ;
struct TYPE_11__ {size_t naddrs; int socklen; TYPE_3__ host; struct sockaddr* sockaddr; int port; TYPE_2__* addrs; } ;
typedef TYPE_4__ ngx_http_upstream_resolved_t ;
struct TYPE_12__ {int pool; } ;
typedef TYPE_5__ ngx_http_request_t ;


 int AF_INET ;

 size_t NGX_ERROR ;
 size_t NGX_OK ;
 int NGX_SOCKADDR_STRLEN ;
 size_t __ngx_sock_ntop (struct sockaddr*,int,int *,int ,int) ;
 void* htons (int ) ;
 int ngx_memcpy (struct sockaddr*,int ,int) ;
 struct sockaddr* ngx_palloc (int ,int) ;
 struct sockaddr* ngx_pcalloc (int ,int) ;
 int * ngx_pnalloc (int ,int ) ;
 size_t ngx_random () ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_connect_create_peer(ngx_http_request_t *r,
    ngx_http_upstream_resolved_t *ur)
{
    u_char *p;
    ngx_int_t i, len;
    socklen_t socklen;
    struct sockaddr *sockaddr;

    i = ngx_random() % ur->naddrs;
    socklen = sizeof(struct sockaddr_in);

    sockaddr = ngx_pcalloc(r->pool, socklen);
    if (sockaddr == ((void*)0)) {
        return NGX_ERROR;
    }

    ((struct sockaddr_in *) sockaddr)->sin_family = AF_INET;
    ((struct sockaddr_in *) sockaddr)->sin_addr.s_addr = ur->addrs[i];
    ((struct sockaddr_in *) sockaddr)->sin_port = htons(ur->port);



    p = ngx_pnalloc(r->pool, NGX_SOCKADDR_STRLEN);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    len = __ngx_sock_ntop(sockaddr, socklen, p, NGX_SOCKADDR_STRLEN, 1);

    ur->sockaddr = sockaddr;
    ur->socklen = socklen;

    ur->host.data = p;
    ur->host.len = len;
    ur->naddrs = 1;

    return NGX_OK;
}
