
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dst ;
typedef int DWORD ;


 int ICU_BROWSER_MODE ;
 int ICU_DECODE ;
 int ICU_ENCODE_PERCENT ;
 int ICU_ENCODE_SPACES_ONLY ;
 int ICU_ESCAPE ;
 int ICU_NO_ENCODE ;
 int ICU_NO_META ;
 int InternetCanonicalizeUrlA (char*,char*,int*,int ) ;
 int ok (int,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void InternetCanonicalizeUrl_test(void)
{
    char src[] = "http://www.winehq.org/%27/ /./>/#>  ";
    char dst[64];
    DWORD dstlen;

    dstlen = sizeof(dst);
    InternetCanonicalizeUrlA(src, dst, &dstlen, 0);
    ok(strcmp(dst, "http://www.winehq.org/%27/%20/%3E/#>") == 0, "Got \"%s\"\n", dst);


    dstlen = sizeof(dst);
    InternetCanonicalizeUrlA(src, dst, &dstlen, ICU_BROWSER_MODE);
    ok(strcmp(dst, "http://www.winehq.org/%27/%20/%3E/#>") == 0, "Got \"%s\"\n", dst);


    dstlen = sizeof(dst);
    InternetCanonicalizeUrlA(src, dst, &dstlen, ICU_ESCAPE);
    ok(strcmp(dst, "http://www.winehq.org/%27/%20/%3E/#>") == 0, "Got \"%s\"\n", dst);

    dstlen = sizeof(dst);
    InternetCanonicalizeUrlA(src, dst, &dstlen, ICU_DECODE);
    ok(strcmp(dst, "http://www.winehq.org/'/%20/%3E/#>") == 0, "Got \"%s\"\n", dst);

    dstlen = sizeof(dst);
    InternetCanonicalizeUrlA(src, dst, &dstlen, ICU_ENCODE_PERCENT);
    ok(strcmp(dst, "http://www.winehq.org/%2527/%20/%3E/#>") == 0, "Got \"%s\"\n", dst);

    dstlen = sizeof(dst);
    InternetCanonicalizeUrlA(src, dst, &dstlen, ICU_ENCODE_SPACES_ONLY);
    ok(strcmp(dst, "http://www.winehq.org/%27/%20/>/#>") == 0, "Got \"%s\"\n", dst);

    dstlen = sizeof(dst);
    InternetCanonicalizeUrlA(src, dst, &dstlen, ICU_NO_ENCODE);
    ok(strcmp(dst, "http://www.winehq.org/%27/ />/#>") == 0, "Got \"%s\"\n", dst);

    dstlen = sizeof(dst);
    InternetCanonicalizeUrlA(src, dst, &dstlen, ICU_NO_META);
    ok(strcmp(dst, "http://www.winehq.org/%27/%20/./%3E/#>") == 0, "Got \"%s\"\n", dst);
}
