
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCCRL_CONTEXT ;
typedef int HCERTSTORE ;
typedef scalar_t__ DWORD ;


 int * CertEnumCRLsInStore (int ,int *) ;

__attribute__((used)) static DWORD countCRLsInStore(HCERTSTORE store)
{
    PCCRL_CONTEXT crl = ((void*)0);
    DWORD crls = 0;

    do {
        crl = CertEnumCRLsInStore(store, crl);
        if (crl)
            crls++;
    } while (crl);
    return crls;
}
