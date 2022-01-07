
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCCERT_CONTEXT ;
typedef int HCERTSTORE ;
typedef scalar_t__ DWORD ;


 int * CertEnumCertificatesInStore (int ,int *) ;

__attribute__((used)) static DWORD countCertsInStore(HCERTSTORE store)
{
    PCCERT_CONTEXT cert = ((void*)0);
    DWORD certs = 0;

    do {
        cert = CertEnumCertificatesInStore(store, cert);
        if (cert)
            certs++;
    } while (cert);
    return certs;
}
