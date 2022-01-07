
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int GetTempFileNameA (char*,char*,int ,char*) ;
 int GetTempPathA (int,char*) ;
 int MAX_PATH ;
 int _unlink (char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fputwc (char,int *) ;
 int fread (char*,int,int,int *) ;
 int memcmp (char*,char*,int) ;
 int ok (int,char*,...) ;
 scalar_t__ p_fopen_s ;
 int win_skip (char*) ;

__attribute__((used)) static void test_fputwc(void)
{
    char temppath[MAX_PATH];
    char tempfile[MAX_PATH];
    FILE *f;
    char buf[1024];
    int ret;

    GetTempPathA(MAX_PATH, temppath);
    GetTempFileNameA(temppath, "", 0, tempfile);

    f = fopen(tempfile, "w");
    ret = fputwc('a', f);
    ok(ret == 'a', "fputwc returned %x, expected 'a'\n", ret);
    ret = fputwc('\n', f);
    ok(ret == '\n', "fputwc returned %x, expected '\\n'\n", ret);
    fclose(f);

    f = fopen(tempfile, "rb");
    ret = fread(buf, 1, sizeof(buf), f);
    ok(ret == 3, "fread returned %d, expected 3\n", ret);
    ok(!memcmp(buf, "a\r\n", 3), "incorrect file data\n");
    fclose(f);

    if(p_fopen_s) {
        f = fopen(tempfile, "w,ccs=unicode");
        ret = fputwc('a', f);
        ok(ret == 'a', "fputwc returned %x, expected 'a'\n", ret);
        ret = fputwc('\n', f);
        ok(ret == '\n', "fputwc returned %x, expected '\\n'\n", ret);
        fclose(f);

        f = fopen(tempfile, "rb");
        ret = fread(buf, 1, sizeof(buf), f);
        ok(ret == 8, "fread returned %d, expected 8\n", ret);
        ok(!memcmp(buf, "\xff\xfe\x61\x00\r\x00\n\x00", 8), "incorrect file data\n");
        fclose(f);

        f = fopen(tempfile, "w,ccs=utf-8");
        ret = fputwc('a', f);
        ok(ret == 'a', "fputwc returned %x, expected 'a'\n", ret);
        ret = fputwc('\n', f);
        ok(ret == '\n', "fputwc returned %x, expected '\\n'\n", ret);
        fclose(f);

        f = fopen(tempfile, "rb");
        ret = fread(buf, 1, sizeof(buf), f);
        ok(ret == 6, "fread returned %d, expected 6\n", ret);
        ok(!memcmp(buf, "\xef\xbb\xbf\x61\r\n", 6), "incorrect file data\n");
        fclose(f);
    }else {
        win_skip("fputwc tests on unicode files\n");
    }

    _unlink(tempfile);
}
