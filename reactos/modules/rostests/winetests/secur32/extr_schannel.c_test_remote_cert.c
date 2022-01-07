
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * hCertStore; } ;
typedef TYPE_1__* PCCERT_CONTEXT ;
typedef int BOOL ;


 TYPE_1__* CertEnumCertificatesInStore (int *,TYPE_1__*) ;
 int FALSE ;
 int TRUE ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_remote_cert(PCCERT_CONTEXT remote_cert)
{
    PCCERT_CONTEXT iter = ((void*)0);
    BOOL incl_remote = FALSE;
    unsigned cert_cnt = 0;

    ok(remote_cert->hCertStore != ((void*)0), "hCertStore == NULL\n");

    while((iter = CertEnumCertificatesInStore(remote_cert->hCertStore, iter))) {
        if(iter == remote_cert)
            incl_remote = TRUE;
        cert_cnt++;
    }

    ok(cert_cnt == 4, "cert_cnt = %u\n", cert_cnt);
    ok(incl_remote, "context does not contain cert itself\n");
}
