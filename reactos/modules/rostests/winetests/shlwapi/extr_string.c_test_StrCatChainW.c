
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int deadbeefW ;
typedef int deadW ;
typedef int buf ;
typedef char WCHAR ;
typedef int DWORD ;


 int memcmp (char*,char const*,int) ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int,int) ;
 int ok (int,char*,...) ;
 int pStrCatChainW (char*,int,int,char const*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_StrCatChainW(void)
{
    static const WCHAR deadbeefW[] = {'D','e','A','d','B','e','E','f',0};
    static const WCHAR deadW[] = {'D','e','A','d',0};
    static const WCHAR beefW[] = {'B','e','E','f',0};

    WCHAR buf[32 + 1];
    DWORD ret;

    if (!pStrCatChainW)
    {
        win_skip("StrCatChainW is not available\n");
        return;
    }


    ret = pStrCatChainW(((void*)0), 0, 0, beefW);
    ok(ret == 0, "Expected StrCatChainW to return 0, got %u\n", ret);


    memset(buf, 0x11, sizeof(buf));
    ret = pStrCatChainW(buf, 0, 0, beefW);
    ok(ret == 0, "Expected StrCatChainW to return 0, got %u\n", ret);
    ok(buf[0] == 0x1111, "Expected buf[0] = 0x1111, got %x\n", buf[0]);

    memcpy(buf, deadbeefW, sizeof(deadbeefW));
    ret = pStrCatChainW(buf, 0, -1, beefW);
    ok(ret == 8, "Expected StrCatChainW to return 8, got %u\n", ret);
    ok(!memcmp(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");


    memset(buf, 0x11, sizeof(buf));
    ret = pStrCatChainW(buf, 32, 0, deadW);
    ok(ret == 4, "Expected StrCatChainW to return 4, got %u\n", ret);
    ok(!memcmp(buf, deadW, sizeof(deadW)), "Buffer contains wrong data\n");

    ret = pStrCatChainW(buf, 32, -1, beefW);
    ok(ret == 8, "Expected StrCatChainW to return 8, got %u\n", ret);
    ok(!memcmp(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");


    memset(buf, 0x11, sizeof(buf));
    ret = pStrCatChainW(buf, 32, 0, deadW);
    ok(ret == 4, "Expected StrCatChainW to return 4, got %u\n", ret);
    ok(!memcmp(buf, deadW, sizeof(deadW)), "Buffer contains wrong data\n");

    ret = pStrCatChainW(buf, 32, 4, beefW);
    ok(ret == 8, "Expected StrCatChainW to return 8, got %u\n", ret);
    ok(!memcmp(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");


    memset(buf, 0x11, sizeof(buf));
    ret = pStrCatChainW(buf, 5, 0, deadW);
    ok(ret == 4, "Expected StrCatChainW to return 4, got %u\n", ret);
    ok(!memcmp(buf, deadW, sizeof(deadW)), "Buffer contains wrong data\n");


    memset(buf, 0x11, sizeof(buf));
    ret = pStrCatChainW(buf, 4, 0, deadW);
    if (ret == 4)
    {



        win_skip("Windows2000/XP behaviour detected for StrCatChainW, skipping tests\n");
        return;
    }
    ok(ret == 3, "Expected StrCatChainW to return 3, got %u\n", ret);
    ok(!memcmp(buf, deadW, 3 * sizeof(WCHAR)), "Buffer contains wrong data\n");
    ok(!buf[3], "String is not nullterminated\n");
    ok(buf[4] == 0x1111, "Expected buf[4] = 0x1111, got %x\n", buf[4]);


    ret = pStrCatChainW(buf, 4, 1, beefW);
    ok(ret == 3, "Expected StrCatChainW to return 3, got %u\n", ret);
    ok(buf[0] == 'D', "Expected buf[0] = 'D', got %x\n", buf[0]);
    ok(buf[1] == 'B', "Expected buf[1] = 'B', got %x\n", buf[1]);
    ok(buf[2] == 'e', "Expected buf[2] = 'e', got %x\n", buf[2]);
    ok(!buf[3], "String is not nullterminated\n");
    ok(buf[4] == 0x1111, "Expected buf[4] = 0x1111, got %x\n", buf[4]);


    memset(buf, 0x11, sizeof(buf));
    memcpy(buf, deadbeefW, sizeof(deadbeefW));
    memcpy(buf + 9, deadW, sizeof(deadW));
    ret = pStrCatChainW(buf, 9, 8, beefW);
    ok(ret == 8, "Expected StrCatChainW to return 8, got %u\n", ret);
    ok(!memcmp(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");
    ok(!memcmp(buf + 9, deadW, sizeof(deadW)), "Buffer contains wrong data\n");


    ret = pStrCatChainW(buf, 9, 9, beefW);
    ok(ret == 8, "Expected StrCatChainW to return 8, got %u\n", ret);
    ok(!memcmp(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");
    ok(!memcmp(buf + 9, deadW, sizeof(deadW)), "Buffer contains wrong data\n");


    ret = pStrCatChainW(buf, 9, 10, beefW);
    ok(ret == 10, "Expected StrCatChainW to return 10, got %u\n", ret);
    ok(!memcmp(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");
    ok(!memcmp(buf + 9, deadW, sizeof(deadW)), "Buffer contains wrong data\n");


    memcpy(buf, deadbeefW, sizeof(deadbeefW));
    ret = pStrCatChainW(buf, 5, -1, deadW);
    ok(ret == 8, "Expected StrCatChainW to return 8, got %u\n", ret);
    ok(!memcmp(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");

    ret = pStrCatChainW(buf, 5, 5, deadW);
    ok(ret == 4, "Expected StrCatChainW to return 4, got %u\n", ret);
    ok(!memcmp(buf, deadW, sizeof(deadW)), "Buffer contains wrong data\n");
    ok(buf[5] == 'e', "Expected buf[5] = 'e', got %x\n", buf[5]);

    ret = pStrCatChainW(buf, 5, 6, deadW);
    ok(ret == 6, "Expected StrCatChainW to return 6, got %u\n", ret);
    ok(!memcmp(buf, deadW, sizeof(deadW)), "Buffer contains wrong data\n");
    ok(buf[5] == 'e', "Expected buf[5] = 'e', got %x\n", buf[5]);
}
