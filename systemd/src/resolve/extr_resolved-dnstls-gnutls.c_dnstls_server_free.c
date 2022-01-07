
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_7__ {TYPE_1__ session_data; } ;
struct TYPE_8__ {TYPE_2__ dnstls_data; } ;
typedef TYPE_3__ DnsServer ;


 int assert (TYPE_3__*) ;
 int gnutls_free (scalar_t__) ;

void dnstls_server_free(DnsServer *server) {
        assert(server);

        if (server->dnstls_data.session_data.data)
                gnutls_free(server->dnstls_data.session_data.data);
}
