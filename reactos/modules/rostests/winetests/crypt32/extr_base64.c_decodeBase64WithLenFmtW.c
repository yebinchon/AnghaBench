
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int WCHAR ;
typedef int * LPCSTR ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CryptStringToBinaryW (int *,int,scalar_t__,int *,scalar_t__*,int *,scalar_t__*) ;
 scalar_t__ memcmp (int const*,int *,scalar_t__) ;
 int ok (int,char*,int *,int) ;

__attribute__((used)) static void decodeBase64WithLenFmtW(LPCSTR strA, int len, DWORD fmt, BOOL retA,
 const BYTE *bufA, DWORD bufLenA, DWORD fmtUsedA)
{
    BYTE buf[8] = {0};
    DWORD bufLen = sizeof(buf)-1, fmtUsed = 0xdeadbeef;
    BOOL ret;
    WCHAR strW[64];
    int i;
    for (i = 0; (strW[i] = strA[i]) != 0; ++i);
    ret = CryptStringToBinaryW(strW, len, fmt, buf, &bufLen, ((void*)0), &fmtUsed);
    ok(ret == retA && bufLen == bufLenA && memcmp(bufA, buf, bufLen) == 0
     && fmtUsed == fmtUsedA, "base64 \"%s\" len %d: W and A differ\n", strA, len);
}
