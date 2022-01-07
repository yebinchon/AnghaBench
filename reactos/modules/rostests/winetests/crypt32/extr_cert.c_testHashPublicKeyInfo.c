
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {TYPE_1__ member_0; } ;
typedef int DWORD ;
typedef TYPE_2__ CERT_PUBLIC_KEY_INFO ;
typedef int BYTE ;
typedef int BOOL ;


 int CryptHashPublicKeyInfo (int ,int ,int ,int ,TYPE_2__*,int*,int*) ;
 int ERROR_FILE_NOT_FOUND ;
 int GetLastError () ;
 int STATUS_ACCESS_VIOLATION ;
 int X509_ASN_ENCODING ;
 scalar_t__ broken (int) ;
 int memcmp (int*,int const*,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void testHashPublicKeyInfo(void)
{
    BOOL ret;
    CERT_PUBLIC_KEY_INFO info = { { 0 } };
    DWORD len;





    ret = CryptHashPublicKeyInfo(0, 0, 0, 0, ((void*)0), ((void*)0), &len);
    ok(!ret && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());

    if (0)
    {
        ret = CryptHashPublicKeyInfo(0, 0, 0, X509_ASN_ENCODING, ((void*)0), ((void*)0), &len);
        ok(!ret && GetLastError() == STATUS_ACCESS_VIOLATION,
         "Expected STATUS_ACCESS_VIOLATION, got %08x\n", GetLastError());
    }
    ret = CryptHashPublicKeyInfo(0, 0, 0, X509_ASN_ENCODING, &info, ((void*)0), &len);
    ok(ret ||
     broken(!ret),
     "CryptHashPublicKeyInfo failed: %08x\n", GetLastError());
    if (ret)
    {
        ok(len == 16, "Expected hash size 16, got %d\n", len);
        if (len == 16)
        {
            static const BYTE emptyHash[] = { 0xb8,0x51,0x3a,0x31,0x0e,0x9f,0x40,
             0x36,0x9c,0x92,0x45,0x1b,0x9d,0xc8,0xf9,0xf6 };
            BYTE buf[16];

            ret = CryptHashPublicKeyInfo(0, 0, 0, X509_ASN_ENCODING, &info, buf,
             &len);
            ok(ret, "CryptHashPublicKeyInfo failed: %08x\n", GetLastError());
            ok(!memcmp(buf, emptyHash, len), "Unexpected hash\n");
        }
    }
}
