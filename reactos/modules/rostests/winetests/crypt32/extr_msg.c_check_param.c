
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int * LPBYTE ;
typedef int HCRYPTMSG ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ CRYPT_E_INVALID_MSG_TYPE ;
 int CryptMsgGetParam (int ,int,int ,int *,int*) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ OSS_LIMITED ;
 scalar_t__ broken (int) ;
 int memcmp (int *,int const*,int) ;
 int ok (int,char*,int ,...) ;
 int win_skip (char*,int) ;

__attribute__((used)) static void check_param(LPCSTR test, HCRYPTMSG msg, DWORD param,
 const BYTE *expected, DWORD expectedSize)
{
    DWORD size;
    LPBYTE buf;
    BOOL ret;

    size = 0xdeadbeef;
    ret = CryptMsgGetParam(msg, param, 0, ((void*)0), &size);
    ok(ret || broken(GetLastError() == OSS_LIMITED ||
     GetLastError() == CRYPT_E_INVALID_MSG_TYPE ),
     "%s: CryptMsgGetParam failed: %08x\n", test, GetLastError());
    if (!ret)
    {
        win_skip("parameter %d not supported, skipping tests\n", param);
        return;
    }
    buf = HeapAlloc(GetProcessHeap(), 0, size);
    ret = CryptMsgGetParam(msg, param, 0, buf, &size);
    ok(ret, "%s: CryptMsgGetParam failed: %08x\n", test, GetLastError());
    ok(size == expectedSize, "%s: expected size %d, got %d\n", test,
     expectedSize, size);
    if (size == expectedSize && size)
        ok(!memcmp(buf, expected, size), "%s: unexpected data\n", test);
    HeapFree(GetProcessHeap(), 0, buf);
}
