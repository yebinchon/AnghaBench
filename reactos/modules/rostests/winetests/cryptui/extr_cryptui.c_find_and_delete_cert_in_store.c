
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int SerialNumber; int Issuer; } ;
struct TYPE_11__ {TYPE_1__ IssuerSerialNumber; } ;
struct TYPE_14__ {TYPE_2__ u; int dwIdChoice; } ;
struct TYPE_13__ {TYPE_3__* pCertInfo; } ;
struct TYPE_12__ {int SerialNumber; int Issuer; } ;
typedef TYPE_4__* PCCERT_CONTEXT ;
typedef int HCERTSTORE ;
typedef int CRYPT_INTEGER_BLOB ;
typedef int CERT_NAME_BLOB ;
typedef TYPE_5__ CERT_ID ;
typedef int BOOL ;


 int CERT_FIND_CERT_ID ;
 int CERT_ID_ISSUER_SERIAL_NUMBER ;
 int CertDeleteCertificateFromStore (TYPE_4__*) ;
 TYPE_4__* CertFindCertificateInStore (int ,int ,int ,int ,TYPE_5__*,int *) ;
 int FALSE ;
 int TRUE ;
 int X509_ASN_ENCODING ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static BOOL find_and_delete_cert_in_store(HCERTSTORE store, PCCERT_CONTEXT cert)
{
    CERT_ID id;
    PCCERT_CONTEXT found;

    id.dwIdChoice = CERT_ID_ISSUER_SERIAL_NUMBER;
    memcpy(&id.u.IssuerSerialNumber.Issuer,
     &cert->pCertInfo->Issuer, sizeof(CERT_NAME_BLOB));
    memcpy(&id.u.IssuerSerialNumber.SerialNumber,
     &cert->pCertInfo->SerialNumber, sizeof(CRYPT_INTEGER_BLOB));
    found = CertFindCertificateInStore(store, X509_ASN_ENCODING, 0,
     CERT_FIND_CERT_ID, &id, ((void*)0));
    if (!found)
        return FALSE;

    CertDeleteCertificateFromStore(found);

    return TRUE;
}
