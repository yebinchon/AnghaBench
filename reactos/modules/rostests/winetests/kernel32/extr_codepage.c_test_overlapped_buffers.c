
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strW ;
typedef int strA ;
typedef int buf ;
typedef char WCHAR ;


 int CP_ACP ;
 int GetLastError () ;
 int SetLastError (int) ;
 int WideCharToMultiByte (int ,int ,char*,int,char*,int,int *,int *) ;
 int memcmp (char*,char const*,int) ;
 int memcpy (char*,char const*,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_overlapped_buffers(void)
{
    static const WCHAR strW[] = {'j','u','s','t',' ','a',' ','t','e','s','t',0};
    static const char strA[] = "just a test";
    char buf[256];
    int ret;

    SetLastError(0xdeadbeef);
    memcpy(buf + 1, strW, sizeof(strW));
    ret = WideCharToMultiByte(CP_ACP, 0, (WCHAR *)(buf + 1), -1, buf, sizeof(buf), ((void*)0), ((void*)0));
    ok(ret == sizeof(strA), "unexpected ret %d\n", ret);
    ok(!memcmp(buf, strA, sizeof(strA)), "conversion failed: %s\n", buf);
    ok(GetLastError() == 0xdeadbeef, "GetLastError() is %u\n", GetLastError());
}
