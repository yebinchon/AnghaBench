
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int certWithCRLDistPoint ;
typedef int aux ;
struct TYPE_9__ {int cBlob; TYPE_1__* rgBlob; } ;
struct TYPE_8__ {int cbSize; TYPE_2__* pLastSyncTime; int member_0; } ;
struct TYPE_7__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; int member_0; } ;
struct TYPE_6__ {int cbData; } ;
typedef int * PCCRL_CONTEXT ;
typedef scalar_t__ PCCERT_CONTEXT ;
typedef scalar_t__ HCERTSTORE ;
typedef TYPE_2__ FILETIME ;
typedef int DWORD ;
typedef TYPE_3__ CRYPT_RETRIEVE_AUX_INFO ;
typedef TYPE_4__ CRYPT_BLOB_ARRAY ;
typedef int BOOL ;


 int * CONTEXT_OID_CAPI2_ANY ;
 int * CONTEXT_OID_CERTIFICATE ;
 int * CONTEXT_OID_CRL ;
 int CRYPT_CACHE_ONLY_RETRIEVAL ;
 int CRYPT_E_ASN1_BADTAG ;
 int CRYPT_E_NO_MATCH ;
 int CertCloseStore (scalar_t__,int ) ;
 scalar_t__ CertEnumCertificatesInStore (scalar_t__,scalar_t__) ;
 int CertFreeCRLContext (int *) ;
 int CertFreeCertificateContext (scalar_t__) ;
 int CryptMemFree (TYPE_4__*) ;
 int CryptRetrieveObjectByUrlA (char*,int *,int ,int ,...) ;
 int DeleteFileA (char*) ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_PATH_NOT_FOUND ;
 int E_INVALIDARG ;
 int GetLastError () ;
 int MAX_PATH ;
 int OSS_DATA_ERROR ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int make_tmp_file (char*) ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int sprintf (char*,char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_retrieveObjectByUrl(void)
{
    BOOL ret;
    char tmpfile[MAX_PATH], url[MAX_PATH + 8];
    CRYPT_BLOB_ARRAY *pBlobArray;
    PCCERT_CONTEXT cert;
    PCCRL_CONTEXT crl;
    HCERTSTORE store;
    CRYPT_RETRIEVE_AUX_INFO aux = { 0 };
    FILETIME ft = { 0 };

    SetLastError(0xdeadbeef);
    ret = CryptRetrieveObjectByUrlA(((void*)0), ((void*)0), 0, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(!ret && (GetLastError() == ERROR_INVALID_PARAMETER ||
                GetLastError() == E_INVALIDARG),
       "got 0x%x/%u (expected ERROR_INVALID_PARAMETER or E_INVALIDARG)\n",
       GetLastError(), GetLastError());

    make_tmp_file(tmpfile);
    sprintf(url, "file://%s", tmpfile);

    pBlobArray = (CRYPT_BLOB_ARRAY *)0xdeadbeef;
    ret = CryptRetrieveObjectByUrlA(url, ((void*)0), 0, 0, (void **)&pBlobArray,
     ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (!ret)
    {

        win_skip("File URLs not supported\n");
        return;
    }
    ok(ret, "CryptRetrieveObjectByUrlA failed: %d\n", GetLastError());
    ok(pBlobArray && pBlobArray != (CRYPT_BLOB_ARRAY *)0xdeadbeef,
     "Expected a valid pointer\n");
    if (pBlobArray && pBlobArray != (CRYPT_BLOB_ARRAY *)0xdeadbeef)
    {
        ok(pBlobArray->cBlob == 1, "Expected 1 blob, got %d\n",
         pBlobArray->cBlob);
        ok(pBlobArray->rgBlob[0].cbData == sizeof(certWithCRLDistPoint),
         "Unexpected size %d\n", pBlobArray->rgBlob[0].cbData);
        CryptMemFree(pBlobArray);
    }
    cert = (PCCERT_CONTEXT)0xdeadbeef;
    ret = CryptRetrieveObjectByUrlA(url, CONTEXT_OID_CERTIFICATE, 0, 0,
     (void **)&cert, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(ret, "CryptRetrieveObjectByUrlA failed: %d\n", GetLastError());
    ok(cert && cert != (PCCERT_CONTEXT)0xdeadbeef, "Expected a cert\n");
    if (cert && cert != (PCCERT_CONTEXT)0xdeadbeef)
        CertFreeCertificateContext(cert);
    crl = (PCCRL_CONTEXT)0xdeadbeef;
    SetLastError(0xdeadbeef);
    ret = CryptRetrieveObjectByUrlA(url, CONTEXT_OID_CRL, 0, 0, (void **)&crl,
     ((void*)0), ((void*)0), ((void*)0), ((void*)0));



    ok(!ret && (GetLastError() == CRYPT_E_NO_MATCH ||
                broken(GetLastError() == CRYPT_E_ASN1_BADTAG ||
                       GetLastError() == OSS_DATA_ERROR)),
        "got 0x%x/%u (expected CRYPT_E_NO_MATCH)\n", GetLastError(), GetLastError());


    if(!ret && GetLastError() != CRYPT_E_ASN1_BADTAG &&
               GetLastError() != OSS_DATA_ERROR) {
        ok(crl == ((void*)0), "Expected CRL to be NULL\n");
    }

    if (crl && crl != (PCCRL_CONTEXT)0xdeadbeef)
        CertFreeCRLContext(crl);
    store = (HCERTSTORE)0xdeadbeef;
    ret = CryptRetrieveObjectByUrlA(url, CONTEXT_OID_CAPI2_ANY, 0, 0,
     &store, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(ret, "CryptRetrieveObjectByUrlA failed: %d\n", GetLastError());
    if (store && store != (HCERTSTORE)0xdeadbeef)
    {
        DWORD certs = 0;

        cert = ((void*)0);
        do {
            cert = CertEnumCertificatesInStore(store, cert);
            if (cert)
                certs++;
        } while (cert);
        ok(certs == 1, "Expected 1 cert, got %d\n", certs);
        CertCloseStore(store, 0);
    }

    cert = (PCCERT_CONTEXT)0xdeadbeef;
    ret = CryptRetrieveObjectByUrlA(url, CONTEXT_OID_CERTIFICATE,
     CRYPT_CACHE_ONLY_RETRIEVAL, 0, (void **)&cert, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(ret, "CryptRetrieveObjectByUrlA failed: %08x\n", GetLastError());
    if (cert && cert != (PCCERT_CONTEXT)0xdeadbeef)
        CertFreeCertificateContext(cert);

    cert = (PCCERT_CONTEXT)0xdeadbeef;
    ret = CryptRetrieveObjectByUrlA(url, CONTEXT_OID_CERTIFICATE, 0, 0,
     (void **)&cert, ((void*)0), ((void*)0), ((void*)0), &aux);

    ok(ret || broken(GetLastError() == E_INVALIDARG),
       "got %u with 0x%x/%u (expected '!=0' or '0' with E_INVALIDARG)\n",
       ret, GetLastError(), GetLastError());
    if (cert && cert != (PCCERT_CONTEXT)0xdeadbeef)
        CertFreeCertificateContext(cert);

    cert = (PCCERT_CONTEXT)0xdeadbeef;
    aux.cbSize = sizeof(aux);
    ret = CryptRetrieveObjectByUrlA(url, CONTEXT_OID_CERTIFICATE, 0, 0,
     (void **)&cert, ((void*)0), ((void*)0), ((void*)0), &aux);

    ok(ret || broken(GetLastError() == E_INVALIDARG),
       "got %u with 0x%x/%u (expected '!=0' or '0' with E_INVALIDARG)\n",
       ret, GetLastError(), GetLastError());
    if (!ret) {

        DeleteFileA(tmpfile);
        skip("no usable CertificateContext\n");
        return;
    }
    CertFreeCertificateContext(cert);

    aux.pLastSyncTime = &ft;
    ret = CryptRetrieveObjectByUrlA(url, CONTEXT_OID_CERTIFICATE, 0, 0,
     (void **)&cert, ((void*)0), ((void*)0), ((void*)0), &aux);
    ok(ret, "CryptRetrieveObjectByUrlA failed: %08x\n", GetLastError());
    CertFreeCertificateContext(cert);
    ok(ft.dwLowDateTime || ft.dwHighDateTime,
     "Expected last sync time to be set\n");
    DeleteFileA(tmpfile);

    SetLastError(0xdeadbeef);
    ret = CryptRetrieveObjectByUrlA(url, CONTEXT_OID_CERTIFICATE,
     CRYPT_CACHE_ONLY_RETRIEVAL, 0, (void **)&cert, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(!ret && (GetLastError() == ERROR_FILE_NOT_FOUND ||
     GetLastError() == ERROR_PATH_NOT_FOUND),
     "Expected ERROR_FILE_NOT_FOUND or ERROR_PATH_NOT_FOUND, got %d\n",
     GetLastError());
}
