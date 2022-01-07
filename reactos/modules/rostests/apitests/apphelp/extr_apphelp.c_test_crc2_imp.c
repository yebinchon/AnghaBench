
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ PATTRINFO ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int TAG_CHECKSUM ;
 int TAG_SIZE ;
 int expect_tag_dword_imp (scalar_t__,int ,size_t) ;
 int free (char*) ;
 size_t g_AttrInfoSize ;
 char* malloc (size_t) ;
 int pSdbFreeFileAttributes (scalar_t__) ;
 scalar_t__ pSdbGetFileAttributes (char const*,scalar_t__*,size_t*) ;
 int test_create_file_imp (char*,char*,size_t) ;
 int winetest_ok (int,char*,...) ;

__attribute__((used)) static void test_crc2_imp(DWORD len, int fill, DWORD expected)
{
    static const WCHAR path[] = {'t','e','s','t','x','x','.','e','x','e',0};

    PATTRINFO pattrinfo = (PATTRINFO)0xdead;
    DWORD num = 333;
    BOOL ret;
    size_t n;
    char* crc_test = malloc(len);
    for (n = 0; n < len; ++n)
        crc_test[n] = (char)(fill ? fill : n);

    test_create_file_imp(L"testxx.exe", crc_test, len);
    free(crc_test);
    ret = pSdbGetFileAttributes(path, &pattrinfo, &num);
    winetest_ok(ret != FALSE, "expected SdbGetFileAttributes to succeed.\n");
    winetest_ok(pattrinfo != (PATTRINFO)0xdead, "expected a valid pointer.\n");
    winetest_ok(num == g_AttrInfoSize, "expected %u items, got %d.\n", g_AttrInfoSize, num);

    if (num == g_AttrInfoSize && ret)
    {
        expect_tag_dword_imp(pattrinfo, TAG_SIZE, len);
        expect_tag_dword_imp(pattrinfo, TAG_CHECKSUM, expected);
    }
    if (ret)
        pSdbFreeFileAttributes(pattrinfo);
}
