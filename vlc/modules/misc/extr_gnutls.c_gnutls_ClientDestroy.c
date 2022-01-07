
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sys; } ;
typedef TYPE_1__ vlc_tls_client_t ;
typedef int gnutls_certificate_credentials_t ;


 int gnutls_certificate_free_credentials (int ) ;

__attribute__((used)) static void gnutls_ClientDestroy(vlc_tls_client_t *crd)
{
    gnutls_certificate_credentials_t x509 = crd->sys;

    gnutls_certificate_free_credentials(x509);
}
