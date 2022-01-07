
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cert_cred; } ;
struct TYPE_6__ {TYPE_1__ dnstls_data; } ;
typedef TYPE_2__ Manager ;


 int assert (TYPE_2__*) ;
 int gnutls_certificate_free_credentials (scalar_t__) ;

void dnstls_manager_free(Manager *manager) {
        assert(manager);

        if (manager->dnstls_data.cert_cred)
                gnutls_certificate_free_credentials(manager->dnstls_data.cert_cred);
}
