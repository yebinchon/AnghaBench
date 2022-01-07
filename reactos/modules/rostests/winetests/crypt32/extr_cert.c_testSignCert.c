
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * member_1; int member_0; } ;
struct TYPE_8__ {scalar_t__ pszObjId; TYPE_1__ member_1; int * member_0; } ;
struct TYPE_7__ {int cbData; int pbData; } ;
typedef scalar_t__ LPSTR ;
typedef scalar_t__ LPCSTR ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef scalar_t__ DWORD ;
typedef TYPE_2__ CRYPT_DATA_BLOB ;
typedef TYPE_3__ CRYPT_ALGORITHM_IDENTIFIER ;
typedef int BYTE ;
typedef int BOOL ;


 int AT_SIGNATURE ;
 int CryptDestroyKey (int ) ;
 int CryptGenKey (int ,int ,int ,int *) ;
 int CryptSignCertificate (int ,int ,int ,int ,int ,TYPE_3__*,int *,int *,scalar_t__*) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 scalar_t__ NTE_BAD_ALGID ;
 scalar_t__ NTE_BAD_KEYSET ;
 scalar_t__ NTE_NO_KEY ;
 int ok (int,char*,scalar_t__,...) ;
 int verifySig (int ,int ,int ,int *,scalar_t__) ;

__attribute__((used)) static void testSignCert(HCRYPTPROV csp, const CRYPT_DATA_BLOB *toBeSigned,
 LPCSTR sigOID, BYTE *sig, DWORD *sigLen)
{
    BOOL ret;
    DWORD size = 0;
    CRYPT_ALGORITHM_IDENTIFIER algoID = { ((void*)0), { 0, ((void*)0) } };
    HCRYPTKEY key;







    ret = CryptSignCertificate(0, 0, 0, toBeSigned->pbData, toBeSigned->cbData,
     &algoID, ((void*)0), ((void*)0), &size);
    ok(!ret && GetLastError() == NTE_BAD_ALGID,
     "Expected NTE_BAD_ALGID, got %08x\n", GetLastError());
    algoID.pszObjId = (LPSTR)sigOID;
    ret = CryptSignCertificate(0, 0, 0, toBeSigned->pbData, toBeSigned->cbData,
     &algoID, ((void*)0), ((void*)0), &size);
    ok(!ret &&
     (GetLastError() == ERROR_INVALID_PARAMETER || GetLastError() == NTE_BAD_ALGID),
     "Expected ERROR_INVALID_PARAMETER or NTE_BAD_ALGID, got %08x\n",
     GetLastError());
    ret = CryptSignCertificate(0, AT_SIGNATURE, 0, toBeSigned->pbData,
     toBeSigned->cbData, &algoID, ((void*)0), ((void*)0), &size);
    ok(!ret &&
     (GetLastError() == ERROR_INVALID_PARAMETER || GetLastError() == NTE_BAD_ALGID),
     "Expected ERROR_INVALID_PARAMETER or NTE_BAD_ALGID, got %08x\n",
     GetLastError());


    ret = CryptSignCertificate(csp, AT_SIGNATURE, 0, toBeSigned->pbData,
     toBeSigned->cbData, &algoID, ((void*)0), ((void*)0), &size);
    ok(!ret && (GetLastError() == NTE_BAD_KEYSET || GetLastError() ==
     NTE_NO_KEY), "Expected NTE_BAD_KEYSET or NTE_NO_KEY, got %08x\n",
     GetLastError());
    ret = CryptGenKey(csp, AT_SIGNATURE, 0, &key);
    ok(ret, "CryptGenKey failed: %08x\n", GetLastError());
    if (ret)
    {
        ret = CryptSignCertificate(csp, AT_SIGNATURE, 0, toBeSigned->pbData,
         toBeSigned->cbData, &algoID, ((void*)0), ((void*)0), &size);
        ok(ret, "CryptSignCertificate failed: %08x\n", GetLastError());
        ok(size <= *sigLen, "Expected size <= %d, got %d\n", *sigLen, size);
        if (ret)
        {
            ret = CryptSignCertificate(csp, AT_SIGNATURE, 0, toBeSigned->pbData,
             toBeSigned->cbData, &algoID, ((void*)0), sig, &size);
            ok(ret, "CryptSignCertificate failed: %08x\n", GetLastError());
            if (ret)
            {
                *sigLen = size;
                verifySig(csp, toBeSigned->pbData, toBeSigned->cbData, sig,
                 size);
            }
        }
        CryptDestroyKey(key);
    }
}
