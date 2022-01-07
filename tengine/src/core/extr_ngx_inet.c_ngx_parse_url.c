
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_7__ {char* data; size_t len; } ;
struct TYPE_8__ {TYPE_1__ url; } ;
typedef TYPE_2__ ngx_url_t ;
typedef int ngx_pool_t ;
typedef int ngx_int_t ;


 int ngx_parse_inet6_url (int *,TYPE_2__*) ;
 int ngx_parse_inet_url (int *,TYPE_2__*) ;
 int ngx_parse_unix_domain_url (int *,TYPE_2__*) ;
 scalar_t__ ngx_strncasecmp (char*,char*,int) ;

ngx_int_t
ngx_parse_url(ngx_pool_t *pool, ngx_url_t *u)
{
    u_char *p;
    size_t len;

    p = u->url.data;
    len = u->url.len;

    if (len >= 5 && ngx_strncasecmp(p, (u_char *) "unix:", 5) == 0) {
        return ngx_parse_unix_domain_url(pool, u);
    }

    if (len && p[0] == '[') {
        return ngx_parse_inet6_url(pool, u);
    }

    return ngx_parse_inet_url(pool, u);
}
