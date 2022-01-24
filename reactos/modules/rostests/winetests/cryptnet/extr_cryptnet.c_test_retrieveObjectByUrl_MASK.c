#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  certWithCRLDistPoint ;
typedef  int /*<<< orphan*/  aux ;
struct TYPE_9__ {int cBlob; TYPE_1__* rgBlob; } ;
struct TYPE_8__ {int cbSize; TYPE_2__* pLastSyncTime; int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int cbData; } ;
typedef  int /*<<< orphan*/ * PCCRL_CONTEXT ;
typedef  scalar_t__ PCCERT_CONTEXT ;
typedef  scalar_t__ HCERTSTORE ;
typedef  TYPE_2__ FILETIME ;
typedef  int DWORD ;
typedef  TYPE_3__ CRYPT_RETRIEVE_AUX_INFO ;
typedef  TYPE_4__ CRYPT_BLOB_ARRAY ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * CONTEXT_OID_CAPI2_ANY ; 
 int /*<<< orphan*/ * CONTEXT_OID_CERTIFICATE ; 
 int /*<<< orphan*/ * CONTEXT_OID_CRL ; 
 int /*<<< orphan*/  CRYPT_CACHE_ONLY_RETRIEVAL ; 
 int CRYPT_E_ASN1_BADTAG ; 
 int CRYPT_E_NO_MATCH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int ERROR_FILE_NOT_FOUND ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_PATH_NOT_FOUND ; 
 int E_INVALIDARG ; 
 int FUNC7 () ; 
 int MAX_PATH ; 
 int OSS_DATA_ERROR ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    BOOL ret;
    char tmpfile[MAX_PATH], url[MAX_PATH + 8];
    CRYPT_BLOB_ARRAY *pBlobArray;
    PCCERT_CONTEXT cert;
    PCCRL_CONTEXT crl;
    HCERTSTORE store;
    CRYPT_RETRIEVE_AUX_INFO aux = { 0 };
    FILETIME ft = { 0 };

    FUNC8(0xdeadbeef);
    ret = FUNC5(NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);
    FUNC11(!ret && (FUNC7() == ERROR_INVALID_PARAMETER ||
                FUNC7() == E_INVALIDARG),
       "got 0x%x/%u (expected ERROR_INVALID_PARAMETER or E_INVALIDARG)\n",
       FUNC7(), FUNC7());

    FUNC10(tmpfile);
    FUNC13(url, "file://%s", tmpfile);

    pBlobArray = (CRYPT_BLOB_ARRAY *)0xdeadbeef;
    ret = FUNC5(url, NULL, 0, 0, (void **)&pBlobArray,
     NULL, NULL, NULL, NULL);
    if (!ret)
    {
        /* File URL support was apparently removed in Vista/Windows 2008 */
        FUNC14("File URLs not supported\n");
        return;
    }
    FUNC11(ret, "CryptRetrieveObjectByUrlA failed: %d\n", FUNC7());
    FUNC11(pBlobArray && pBlobArray != (CRYPT_BLOB_ARRAY *)0xdeadbeef,
     "Expected a valid pointer\n");
    if (pBlobArray && pBlobArray != (CRYPT_BLOB_ARRAY *)0xdeadbeef)
    {
        FUNC11(pBlobArray->cBlob == 1, "Expected 1 blob, got %d\n",
         pBlobArray->cBlob);
        FUNC11(pBlobArray->rgBlob[0].cbData == sizeof(certWithCRLDistPoint),
         "Unexpected size %d\n", pBlobArray->rgBlob[0].cbData);
        FUNC4(pBlobArray);
    }
    cert = (PCCERT_CONTEXT)0xdeadbeef;
    ret = FUNC5(url, CONTEXT_OID_CERTIFICATE, 0, 0,
     (void **)&cert, NULL, NULL, NULL, NULL);
    FUNC11(ret, "CryptRetrieveObjectByUrlA failed: %d\n", FUNC7());
    FUNC11(cert && cert != (PCCERT_CONTEXT)0xdeadbeef, "Expected a cert\n");
    if (cert && cert != (PCCERT_CONTEXT)0xdeadbeef)
        FUNC3(cert);
    crl = (PCCRL_CONTEXT)0xdeadbeef;
    FUNC8(0xdeadbeef);
    ret = FUNC5(url, CONTEXT_OID_CRL, 0, 0, (void **)&crl,
     NULL, NULL, NULL, NULL);
    /* w2k3,XP, newer w2k: CRYPT_E_NO_MATCH, older w2k: CRYPT_E_ASN1_BADTAG
     * or OSS_DATA_ERROR.
     */
    FUNC11(!ret && (FUNC7() == CRYPT_E_NO_MATCH ||
                FUNC9(FUNC7() == CRYPT_E_ASN1_BADTAG ||
                       FUNC7() == OSS_DATA_ERROR)),
        "got 0x%x/%u (expected CRYPT_E_NO_MATCH)\n", FUNC7(), FUNC7());

    /* only newer versions of cryptnet do the cleanup */
    if(!ret && FUNC7() != CRYPT_E_ASN1_BADTAG &&
               FUNC7() != OSS_DATA_ERROR) {
        FUNC11(crl == NULL, "Expected CRL to be NULL\n");
    }

    if (crl && crl != (PCCRL_CONTEXT)0xdeadbeef)
        FUNC2(crl);
    store = (HCERTSTORE)0xdeadbeef;
    ret = FUNC5(url, CONTEXT_OID_CAPI2_ANY, 0, 0,
     &store, NULL, NULL, NULL, NULL);
    FUNC11(ret, "CryptRetrieveObjectByUrlA failed: %d\n", FUNC7());
    if (store && store != (HCERTSTORE)0xdeadbeef)
    {
        DWORD certs = 0;

        cert = NULL;
        do {
            cert = FUNC1(store, cert);
            if (cert)
                certs++;
        } while (cert);
        FUNC11(certs == 1, "Expected 1 cert, got %d\n", certs);
        FUNC0(store, 0);
    }
    /* Are file URLs cached? */
    cert = (PCCERT_CONTEXT)0xdeadbeef;
    ret = FUNC5(url, CONTEXT_OID_CERTIFICATE,
     CRYPT_CACHE_ONLY_RETRIEVAL, 0, (void **)&cert, NULL, NULL, NULL, NULL);
    FUNC11(ret, "CryptRetrieveObjectByUrlA failed: %08x\n", FUNC7());
    if (cert && cert != (PCCERT_CONTEXT)0xdeadbeef)
        FUNC3(cert);

    cert = (PCCERT_CONTEXT)0xdeadbeef;
    ret = FUNC5(url, CONTEXT_OID_CERTIFICATE, 0, 0,
     (void **)&cert, NULL, NULL, NULL, &aux);
    /* w2k: failure with E_INVALIDARG */
    FUNC11(ret || FUNC9(FUNC7() == E_INVALIDARG),
       "got %u with 0x%x/%u (expected '!=0' or '0' with E_INVALIDARG)\n",
       ret, FUNC7(), FUNC7());
    if (cert && cert != (PCCERT_CONTEXT)0xdeadbeef)
        FUNC3(cert);

    cert = (PCCERT_CONTEXT)0xdeadbeef;
    aux.cbSize = sizeof(aux);
    ret = FUNC5(url, CONTEXT_OID_CERTIFICATE, 0, 0,
     (void **)&cert, NULL, NULL, NULL, &aux);
    /* w2k: failure with E_INVALIDARG */
    FUNC11(ret || FUNC9(FUNC7() == E_INVALIDARG),
       "got %u with 0x%x/%u (expected '!=0' or '0' with E_INVALIDARG)\n",
       ret, FUNC7(), FUNC7());
    if (!ret) {
        /* no more tests useful */
        FUNC6(tmpfile);
        FUNC12("no usable CertificateContext\n");
        return;
    }
    FUNC3(cert);

    aux.pLastSyncTime = &ft;
    ret = FUNC5(url, CONTEXT_OID_CERTIFICATE, 0, 0,
     (void **)&cert, NULL, NULL, NULL, &aux);
    FUNC11(ret, "CryptRetrieveObjectByUrlA failed: %08x\n", FUNC7());
    FUNC3(cert);
    FUNC11(ft.dwLowDateTime || ft.dwHighDateTime,
     "Expected last sync time to be set\n");
    FUNC6(tmpfile);
    /* Okay, after being deleted, are file URLs still cached? */
    FUNC8(0xdeadbeef);
    ret = FUNC5(url, CONTEXT_OID_CERTIFICATE,
     CRYPT_CACHE_ONLY_RETRIEVAL, 0, (void **)&cert, NULL, NULL, NULL, NULL);
    FUNC11(!ret && (FUNC7() == ERROR_FILE_NOT_FOUND ||
     FUNC7() == ERROR_PATH_NOT_FOUND),
     "Expected ERROR_FILE_NOT_FOUND or ERROR_PATH_NOT_FOUND, got %d\n",
     FUNC7());
}