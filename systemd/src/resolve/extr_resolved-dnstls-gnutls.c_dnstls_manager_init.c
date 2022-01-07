
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cert_cred; } ;
struct TYPE_6__ {TYPE_1__ dnstls_data; } ;
typedef TYPE_2__ Manager ;


 int ENOMEM ;
 int assert (TYPE_2__*) ;
 int gnutls_certificate_allocate_credentials (int *) ;
 int gnutls_certificate_set_x509_system_trust (int ) ;
 int gnutls_strerror (int) ;
 int log_warning (char*,int ) ;

int dnstls_manager_init(Manager *manager) {
        int r;
        assert(manager);

        r = gnutls_certificate_allocate_credentials(&manager->dnstls_data.cert_cred);
        if (r < 0)
                return -ENOMEM;

        r = gnutls_certificate_set_x509_system_trust(manager->dnstls_data.cert_cred);
        if (r < 0)
                log_warning("Failed to load system trust store: %s", gnutls_strerror(r));

        return 0;
}
