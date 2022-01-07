
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {size_t len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_6__ {int port; int ip; } ;
typedef TYPE_2__ ngx_http_tfs_inet_t ;


 int INADDR_NONE ;
 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_atoi (int *,size_t) ;
 int ngx_inet_addr (int *,size_t) ;
 int * ngx_strlchr (int *,int *,char) ;

ngx_int_t
ngx_http_tfs_parse_inet(ngx_str_t *u, ngx_http_tfs_inet_t *addr)
{
    u_char *port, *last;
    size_t len;
    ngx_int_t n;

    last = u->data + u->len;

    port = ngx_strlchr(u->data, last, ':');

    if (port) {
        port++;

        len = last - port;

        if (len == 0) {
            return NGX_ERROR;
        }

        n = ngx_atoi(port, len);

        if (n < 1 || n > 65535) {
            return NGX_ERROR;
        }

        addr->port = n;

        addr->ip = ngx_inet_addr(u->data, u->len - len - 1);
        if (addr->ip == INADDR_NONE) {
            return NGX_ERROR;
        }

    } else {
        return NGX_ERROR;
    }

    return NGX_OK;
}
