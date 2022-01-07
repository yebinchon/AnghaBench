
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pszObjId; } ;
struct TYPE_7__ {TYPE_1__ Algorithm; } ;
typedef TYPE_2__* PCERT_PUBLIC_KEY_INFO ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int AT_SIGNATURE ;
 int CryptDestroyKey (int ) ;
 int CryptExportPublicKeyInfoEx (int ,int ,int ,int *,int ,int *,TYPE_2__*,int *) ;
 int CryptGenKey (int ,int ,int ,int *) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int ) ;
 scalar_t__ NTE_NO_KEY ;
 int X509_ASN_ENCODING ;
 int ok (int,char*,scalar_t__,...) ;
 int strcmp (int ,int ) ;
 int szOID_RSA_RSA ;

__attribute__((used)) static void testExportPublicKey(HCRYPTPROV csp, PCERT_PUBLIC_KEY_INFO *pInfo)
{
    BOOL ret;
    DWORD size = 0;
    HCRYPTKEY key;




    ret = CryptExportPublicKeyInfoEx(0, 0, 0, ((void*)0), 0, ((void*)0), ((void*)0), &size);
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
     "Expected ERROR_INVALID_PARAMETER, got %08x\n", GetLastError());
    ret = CryptExportPublicKeyInfoEx(0, AT_SIGNATURE, 0, ((void*)0), 0, ((void*)0), ((void*)0),
     &size);
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
     "Expected ERROR_INVALID_PARAMETER, got %08x\n", GetLastError());
    ret = CryptExportPublicKeyInfoEx(0, 0, X509_ASN_ENCODING, ((void*)0), 0, ((void*)0),
     ((void*)0), &size);
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
     "Expected ERROR_INVALID_PARAMETER, got %08x\n", GetLastError());
    ret = CryptExportPublicKeyInfoEx(0, AT_SIGNATURE, X509_ASN_ENCODING, ((void*)0),
     0, ((void*)0), ((void*)0), &size);
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
     "Expected ERROR_INVALID_PARAMETER, got %08x\n", GetLastError());

    ret = CryptExportPublicKeyInfoEx(csp, AT_SIGNATURE, X509_ASN_ENCODING, ((void*)0),
     0, ((void*)0), ((void*)0), &size);
    ok(!ret && GetLastError() == NTE_NO_KEY, "Expected NTE_NO_KEY, got %08x\n",
     GetLastError());
    ret = CryptGenKey(csp, AT_SIGNATURE, 0, &key);
    ok(ret, "CryptGenKey failed: %08x\n", GetLastError());
    if (ret)
    {
        ret = CryptExportPublicKeyInfoEx(csp, AT_SIGNATURE, X509_ASN_ENCODING,
         ((void*)0), 0, ((void*)0), ((void*)0), &size);
        ok(ret, "CryptExportPublicKeyInfoEx failed: %08x\n", GetLastError());
        *pInfo = HeapAlloc(GetProcessHeap(), 0, size);
        if (*pInfo)
        {
            ret = CryptExportPublicKeyInfoEx(csp, AT_SIGNATURE,
             X509_ASN_ENCODING, ((void*)0), 0, ((void*)0), *pInfo, &size);
            ok(ret, "CryptExportPublicKeyInfoEx failed: %08x\n",
             GetLastError());
            if (ret)
            {



                ok(!strcmp((*pInfo)->Algorithm.pszObjId, szOID_RSA_RSA),
                 "Expected %s, got %s\n", szOID_RSA_RSA,
                 (*pInfo)->Algorithm.pszObjId);
            }
        }
    }
    CryptDestroyKey(key);
}
