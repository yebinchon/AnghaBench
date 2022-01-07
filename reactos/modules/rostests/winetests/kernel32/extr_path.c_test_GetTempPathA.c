
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int DWORD ;


 int GetTempPathA (int,char*) ;
 int MAX_PATH ;
 scalar_t__ broken (int) ;
 scalar_t__ lstrcmpiA (char*,char*) ;
 int lstrcpyA (char*,char*) ;
 int memset (char*,char,int) ;
 int ok (int,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static void test_GetTempPathA(char* tmp_dir)
{
    DWORD len, slen, len_with_null;
    char buf[MAX_PATH];

    len_with_null = strlen(tmp_dir) + 1;

    lstrcpyA(buf, "foo");
    len = GetTempPathA(MAX_PATH, buf);
    ok(len <= MAX_PATH, "should fit into MAX_PATH\n");
    ok(lstrcmpiA(buf, tmp_dir) == 0, "expected [%s], got [%s]\n",tmp_dir,buf);
    ok(len == strlen(buf), "returned length should be equal to the length of string\n");
    len = GetTempPathA(1, buf);
    ok(len >= len_with_null, "Expected >= %u, got %u\n", len_with_null, len);

    len = GetTempPathA(0, ((void*)0));
    ok(len >= len_with_null, "Expected >= %u, got %u\n", len_with_null, len);




    lstrcpyA(buf, "foo");
    len = GetTempPathA(len, buf);
    ok(lstrcmpiA(buf, tmp_dir) == 0, "expected [%s], got [%s]\n",tmp_dir,buf);
    ok(len == strlen(buf), "returned length should be equal to the length of string\n");

    memset(buf, 'a', sizeof(buf));
    len = GetTempPathA(sizeof(buf), buf);
    ok(lstrcmpiA(buf, tmp_dir) == 0, "expected [%s], got [%s]\n",tmp_dir,buf);
    ok(len == strlen(buf), "returned length should be equal to the length of string\n");

    slen = len + 1;
    for(len++; len < sizeof(buf); len++)
        ok(buf[len] == 'a', "expected 'a' at [%d], got 0x%x\n", len, buf[len]);


    memset(buf, 'a', sizeof(buf));
    len = GetTempPathA(slen / 2, buf);
    ok(len == slen || broken(len == slen + 1) ,
       "expected %d, got %d\n", slen, len);
    for(len = 0; len < sizeof(buf) / sizeof(buf[0]); len++)
        ok(buf[len] == 'a', "expected 'a' at [%d], got 0x%x\n", len, buf[len]);
}
