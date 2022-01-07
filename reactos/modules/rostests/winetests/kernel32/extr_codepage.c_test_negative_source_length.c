
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bufW ;
typedef int buf ;
typedef char WCHAR ;


 int CP_ACP ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int GetLastError () ;
 int MultiByteToWideChar (int ,int ,char*,int,char*,int) ;
 int SetLastError (int) ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int *) ;
 int foobarW ;
 int lstrcmpA (char*,char*) ;
 int lstrcmpW (char*,int ) ;
 int memset (char*,char,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_negative_source_length(void)
{
    int len;
    char buf[10];
    WCHAR bufW[10];


    SetLastError( 0xdeadbeef );
    memset(buf,'x',sizeof(buf));
    len = WideCharToMultiByte(CP_ACP, 0, foobarW, -2002, buf, 10, ((void*)0), ((void*)0));
    ok(len == 7 && GetLastError() == 0xdeadbeef,
       "WideCharToMultiByte(-2002): len=%d error=%u\n", len, GetLastError());
    ok(!lstrcmpA(buf, "foobar"),
       "WideCharToMultiByte(-2002): expected \"foobar\" got \"%s\"\n", buf);

    SetLastError( 0xdeadbeef );
    memset(bufW,'x',sizeof(bufW));
    len = MultiByteToWideChar(CP_ACP, 0, "foobar", -2002, bufW, 10);
    ok(len == 7 && !lstrcmpW(bufW, foobarW) && GetLastError() == 0xdeadbeef,
       "MultiByteToWideChar(-2002): len=%d error=%u\n", len, GetLastError());

    SetLastError(0xdeadbeef);
    memset(bufW, 'x', sizeof(bufW));
    len = MultiByteToWideChar(CP_ACP, 0, "foobar", -1, bufW, 6);
    ok(len == 0 && GetLastError() == ERROR_INSUFFICIENT_BUFFER,
       "MultiByteToWideChar(-1): len=%d error=%u\n", len, GetLastError());
}
