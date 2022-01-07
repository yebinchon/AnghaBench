
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obuf ;
typedef int ibuf ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;
 int fwrite (char const*,int,int,int *) ;
 int getc (int *) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,...) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 int unlink (char*) ;

__attribute__((used)) static void test_asciimode2(void)
{
    FILE *fp;
    char ibuf[4];
    int i;
    static const char obuf[] =
"00\n"
"000000000000000000000000000000000000000000000000000000000000000000000000000000\n"
"000000000000000000000000000000000000000000000000000000000000000000000000000000\n"
"000000000000000000000000000000000000000000000000000000000000000000000000000000\n"
"000000000000000000000000000000000000000000000000000000000000000000000000000000\n"
"000000000000000000000000000000000000000000000000000000000000000000000000000000\n"
"000000000000000000000000000000000000000000000000000000000000000000000000000000\n"
"000000000000000000\n"
"1111111111111111111";

    fp = fopen("ascii2.tst", "wt");
    fwrite(obuf, 1, sizeof(obuf), fp);
    fclose(fp);

    fp = fopen("ascii2.tst", "rt");
    ok(getc(fp) == '0', "first char not 0\n");
    memset(ibuf, 0, sizeof(ibuf));
    i = fread(ibuf, 1, sizeof(ibuf), fp);
    ok(i == sizeof(ibuf), "fread i %d != sizeof(ibuf)\n", i);
    ok(0 == strncmp(ibuf, obuf+1, sizeof(ibuf)), "ibuf != obuf\n");
    fclose(fp);
    unlink("ascii2.tst");
}
