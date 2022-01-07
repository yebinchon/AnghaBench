
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ session; } ;
struct TYPE_6__ {TYPE_1__ dnstls_data; } ;
typedef TYPE_2__ DnsServer ;


 int SSL_SESSION_free (scalar_t__) ;
 int assert (TYPE_2__*) ;

void dnstls_server_free(DnsServer *server) {
        assert(server);

        if (server->dnstls_data.session)
                SSL_SESSION_free(server->dnstls_data.session);
}
