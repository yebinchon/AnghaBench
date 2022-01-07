
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf16_test ;
typedef int buf ;
typedef unsigned char WCHAR ;
typedef int FILE ;


 int fclose (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,...) ;
 int fscanf (int *,char*,char*) ;
 int ftell (int *) ;
 int fwprintf (int *,unsigned char const*) ;
 int memcmp (char*,...) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,...) ;
 int strcmp (char*,char*) ;
 int unlink (char const*) ;
 char* wine_dbgstr_w (unsigned char*) ;

__attribute__((used)) static void test_fprintf(void)
{
    static const char file_name[] = "fprintf.tst";
    static const WCHAR utf16_test[] = {'u','n','i','c','o','d','e','\n',0};

    FILE *fp = fopen(file_name, "wb");
    char buf[1024];
    int ret;

    ret = fprintf(fp, "simple test\n");
    ok(ret == 12, "ret = %d\n", ret);
    ret = ftell(fp);
    ok(ret == 12, "ftell returned %d\n", ret);

    ret = fprintf(fp, "contains%cnull\n", '\0');
    ok(ret == 14, "ret = %d\n", ret);
    ret = ftell(fp);
    ok(ret == 26, "ftell returned %d\n", ret);

    ret = fwprintf(fp, utf16_test);
    ok(ret == 8, "ret = %d\n", ret);
    ret = ftell(fp);
    ok(ret == 42, "ftell returned %d\n", ret);

    fclose(fp);

    fp = fopen(file_name, "rb");
    ret = fscanf(fp, "%[^\n] ", buf);
    ok(ret == 1, "ret = %d\n", ret);
    ret = ftell(fp);
    ok(ret == 12, "ftell returned %d\n", ret);
    ok(!strcmp(buf, "simple test"), "buf = %s\n", buf);

    fgets(buf, sizeof(buf), fp);
    ret = ftell(fp);
    ok(ret == 26, "ret = %d\n", ret);
    ok(!memcmp(buf, "contains\0null\n", 14), "buf = %s\n", buf);

    memset(buf, 0, sizeof(buf));
    fgets(buf, sizeof(buf), fp);
    ret = ftell(fp);
    ok(ret == 41, "ret =  %d\n", ret);
    ok(!memcmp(buf, utf16_test, sizeof(utf16_test)),
            "buf = %s\n", wine_dbgstr_w((WCHAR*)buf));

    fclose(fp);

    fp = fopen(file_name, "wt");

    ret = fprintf(fp, "simple test\n");
    ok(ret == 12, "ret = %d\n", ret);
    ret = ftell(fp);
    ok(ret == 13, "ftell returned %d\n", ret);

    ret = fprintf(fp, "contains%cnull\n", '\0');
    ok(ret == 14, "ret = %d\n", ret);
    ret = ftell(fp);
    ok(ret == 28, "ftell returned %d\n", ret);

    ret = fwprintf(fp, utf16_test);
    ok(ret == 8, "ret = %d\n", ret);
    ret = ftell(fp);
    ok(ret == 37, "ftell returned %d\n", ret);

    fclose(fp);

    fp = fopen(file_name, "rb");
    ret = fscanf(fp, "%[^\n] ", buf);
    ok(ret == 1, "ret = %d\n", ret);
    ret = ftell(fp);
    ok(ret == 13, "ftell returned %d\n", ret);
    ok(!strcmp(buf, "simple test\r"), "buf = %s\n", buf);

    fgets(buf, sizeof(buf), fp);
    ret = ftell(fp);
    ok(ret == 28, "ret = %d\n", ret);
    ok(!memcmp(buf, "contains\0null\r\n", 15), "buf = %s\n", buf);

    fgets(buf, sizeof(buf), fp);
    ret = ftell(fp);
    ok(ret == 37, "ret =  %d\n", ret);
    ok(!strcmp(buf, "unicode\r\n"), "buf = %s\n", buf);

    fclose(fp);
    unlink(file_name);
}
