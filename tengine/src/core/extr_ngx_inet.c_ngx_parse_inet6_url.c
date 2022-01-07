
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_16__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_9__ sin6_addr; void* sin6_port; void* sin6_family; } ;
struct TYPE_14__ {int sockaddr; } ;
struct TYPE_13__ {size_t len; char* data; } ;
struct TYPE_12__ {int len; char* data; } ;
struct TYPE_11__ {int len; char* data; } ;
struct TYPE_10__ {char* data; size_t len; } ;
struct TYPE_15__ {int socklen; char* err; int last_port; void* port; int no_port; void* default_port; int wildcard; TYPE_5__ sockaddr; void* family; TYPE_4__ host; TYPE_3__ port_text; scalar_t__ listen; TYPE_2__ uri; int uri_part; TYPE_1__ url; } ;
typedef TYPE_6__ ngx_url_t ;
typedef int ngx_pool_t ;
typedef int ngx_int_t ;
typedef void* in_port_t ;


 void* AF_INET6 ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (TYPE_9__*) ;
 int NGX_ERROR ;
 scalar_t__ NGX_OK ;
 void* htons (void*) ;
 int ngx_atoi (char*,size_t) ;
 scalar_t__ ngx_inet6_addr (char*,size_t,int ) ;
 int ngx_inet_add_addr (int *,TYPE_6__*,int *,int,int) ;
 char* ngx_strlchr (char*,char*,char) ;

__attribute__((used)) static ngx_int_t
ngx_parse_inet6_url(ngx_pool_t *pool, ngx_url_t *u)
{
    u->err = "the INET6 sockets are not supported on this platform";

    return NGX_ERROR;


}
