
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int wYear; } ;
struct encodedFiletime {int * encodedTime; TYPE_3__ sysTime; } ;
struct TYPE_5__ {int member_0; } ;
typedef scalar_t__ LPCSTR ;
typedef TYPE_1__ FILETIME ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CRYPT_ENCODE_ALLOC_FLAG ;
 scalar_t__ CRYPT_E_BAD_ENCODE ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int LocalFree (int *) ;
 int SystemTimeToFileTime (TYPE_3__*,TYPE_1__*) ;
 scalar_t__ X509_CHOICE_OF_TIME ;
 scalar_t__ broken (int) ;
 int memcmp (int *,int *,int ) ;
 int ok (int,char*,...) ;
 int pCryptEncodeObjectEx (scalar_t__,scalar_t__,TYPE_1__*,int ,int *,int **,scalar_t__*) ;

__attribute__((used)) static void testTimeEncoding(DWORD dwEncoding, LPCSTR structType,
 const struct encodedFiletime *time)
{
    FILETIME ft = { 0 };
    BYTE *buf = ((void*)0);
    DWORD bufSize = 0;
    BOOL ret;

    ret = SystemTimeToFileTime(&time->sysTime, &ft);
    ok(ret, "SystemTimeToFileTime failed: %d\n", GetLastError());
    ret = pCryptEncodeObjectEx(dwEncoding, structType, &ft,
     CRYPT_ENCODE_ALLOC_FLAG, ((void*)0), &buf, &bufSize);



    if (structType == X509_CHOICE_OF_TIME ||
     (time->sysTime.wYear >= 1950 && time->sysTime.wYear <= 2050))
    {
        ok(ret, "CryptEncodeObjectEx failed: %d (0x%08x)\n", GetLastError(),
         GetLastError());
        ok(buf != ((void*)0), "Expected an allocated buffer\n");
        if (ret)
        {
            ok(buf[0] == time->encodedTime[0],
             "Expected type 0x%02x, got 0x%02x\n", time->encodedTime[0],
             buf[0]);
            ok(buf[1] == time->encodedTime[1], "Expected %d bytes, got %d\n",
             time->encodedTime[1], bufSize);
            ok(!memcmp(time->encodedTime + 2, buf + 2, time->encodedTime[1]),
             "Got unexpected value for time encoding\n");
            LocalFree(buf);
        }
    }
    else
        ok((!ret && GetLastError() == CRYPT_E_BAD_ENCODE) ||
         broken(GetLastError() == ERROR_SUCCESS),
         "Expected CRYPT_E_BAD_ENCODE, got 0x%08x\n", GetLastError());
}
