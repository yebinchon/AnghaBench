
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int LPCSTR ;
typedef size_t DWORD ;
typedef scalar_t__ BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CryptStringToBinaryA (int ,int,size_t,scalar_t__*,size_t*,int *,size_t*) ;
 int GetLastError () ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int decodeBase64WithLenFmtW (int ,int,size_t,scalar_t__,scalar_t__*,size_t,size_t) ;
 int ok (int,char*,int ,int,...) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void decodeBase64WithLenFmt(LPCSTR str, int len, DWORD fmt, LPCSTR expected, int le, BOOL isBroken)
{
    BYTE buf[8] = {0};
    DWORD bufLen = sizeof(buf)-1, fmtUsed = 0xdeadbeef;
    BOOL ret;
    SetLastError(0xdeadbeef);
    ret = CryptStringToBinaryA(str, len, fmt, buf, &bufLen, ((void*)0), &fmtUsed);
    buf[bufLen] = 0;
    if (expected) {
        BOOL correct = ret && strcmp(expected, (char*)buf) == 0;
        ok(correct || (isBroken && broken(!ret)),
         "base64 \"%s\" len %d: expected \"%s\", got \"%s\" (ret %d, le %d)\n",
         str, len, expected, (char*)buf, ret, GetLastError());
        if (correct)
            ok(fmtUsed == fmt, "base64 \"%s\" len %d: expected fmt %d, used %d\n",
             str, len, fmt, fmtUsed);
    } else {
        ok(!ret && GetLastError() == le,
         "base64 \"%s\" len %d: expected failure, got \"%s\" (ret %d, le %d)\n",
         str, len, (char*)buf, ret, GetLastError());
    }

    decodeBase64WithLenFmtW(str, len, fmt, ret, buf, bufLen, fmtUsed);
}
