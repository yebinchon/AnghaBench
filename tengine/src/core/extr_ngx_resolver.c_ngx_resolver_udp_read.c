
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {int resolver; } ;
typedef TYPE_1__ ngx_resolver_connection_t ;
struct TYPE_7__ {scalar_t__ ready; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_8__ {TYPE_1__* data; } ;
typedef TYPE_3__ ngx_connection_t ;


 int NGX_RESOLVER_UDP_SIZE ;
 int ngx_resolver_process_response (int ,int *,scalar_t__,int ) ;
 scalar_t__ ngx_udp_recv (TYPE_3__*,int *,int) ;

__attribute__((used)) static void
ngx_resolver_udp_read(ngx_event_t *rev)
{
    ssize_t n;
    ngx_connection_t *c;
    ngx_resolver_connection_t *rec;
    u_char buf[NGX_RESOLVER_UDP_SIZE];

    c = rev->data;
    rec = c->data;

    do {
        n = ngx_udp_recv(c, buf, NGX_RESOLVER_UDP_SIZE);

        if (n < 0) {
            return;
        }

        ngx_resolver_process_response(rec->resolver, buf, n, 0);

    } while (rev->ready);
}
