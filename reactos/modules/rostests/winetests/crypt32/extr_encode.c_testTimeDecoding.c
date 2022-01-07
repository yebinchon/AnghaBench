
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int wYear; } ;
struct encodedFiletime {TYPE_3__ sysTime; scalar_t__* encodedTime; } ;
typedef int ft ;
struct TYPE_5__ {int member_0; } ;
typedef scalar_t__ LPCSTR ;
typedef TYPE_1__ FILETIME ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CRYPT_E_ASN1_BADTAG ;
 scalar_t__ GetLastError () ;
 scalar_t__ OSS_DATA_ERROR ;
 scalar_t__ OSS_PDU_MISMATCH ;
 scalar_t__ X509_CHOICE_OF_TIME ;
 scalar_t__ broken (int) ;
 int compareTime (TYPE_3__*,TYPE_1__*) ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pCryptDecodeObjectEx (int,scalar_t__,scalar_t__*,scalar_t__,int ,int *,TYPE_1__*,int*) ;

__attribute__((used)) static void testTimeDecoding(DWORD dwEncoding, LPCSTR structType,
 const struct encodedFiletime *time)
{
    FILETIME ft = { 0 };
    DWORD size = sizeof(ft);
    BOOL ret;

    ret = pCryptDecodeObjectEx(dwEncoding, structType, time->encodedTime,
     time->encodedTime[1] + 2, 0, ((void*)0), &ft, &size);



    if (structType == X509_CHOICE_OF_TIME ||
     (time->sysTime.wYear >= 1950 && time->sysTime.wYear <= 2050))
    {
        ok(ret || broken(GetLastError() == OSS_DATA_ERROR),
         "CryptDecodeObjectEx failed: %d (0x%08x)\n", GetLastError(),
         GetLastError());
        if (ret)
            compareTime(&time->sysTime, &ft);
    }
    else
        ok(!ret && (GetLastError() == CRYPT_E_ASN1_BADTAG ||
         GetLastError() == OSS_PDU_MISMATCH ),
         "Expected CRYPT_E_ASN1_BADTAG or OSS_PDU_MISMATCH, got %08x\n",
         GetLastError());
}
