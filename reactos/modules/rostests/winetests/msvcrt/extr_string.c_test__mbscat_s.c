
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dst ;


 int EILSEQ ;
 int EINVAL ;
 int ERANGE ;
 int _getmbcp () ;
 int _setmbcp (int) ;
 int memcmp (unsigned char*,char*,int) ;
 int memset (unsigned char*,char,int) ;
 int ok (int,char*,...) ;
 int p_mbscat_s (unsigned char*,int,unsigned char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__mbscat_s(void)
{
    unsigned char dst[8], src[4];
    int err;
    int prev_cp = _getmbcp();

    if(!p_mbscat_s)
    {
        win_skip("_mbscat_s not found\n");
        return;
    }


    src[0] = dst[0] = 0;
    err = p_mbscat_s(((void*)0), sizeof(dst), src);
    ok(err == EINVAL, "_mbscat_s returned %d\n", err);

    err = p_mbscat_s(dst, sizeof(dst), ((void*)0));
    ok(err == EINVAL, "_mbscat_s returned %d\n", err);

    dst[0] = 'a';
    err = p_mbscat_s(dst, 1, src);
    ok(err == EINVAL, "_mbscat_s returned %d\n", err);

    memset(dst, 'a', sizeof(dst));
    dst[6] = 0;
    src[0] = 'b';
    src[1] = 0;

    err = p_mbscat_s(dst, sizeof(dst), src);
    ok(err == 0, "_mbscat_s returned %d\n", err);
    ok(!memcmp(dst, "aaaaaab", 8), "dst = %s\n", dst);

    err = p_mbscat_s(dst, sizeof(dst), src);
    ok(err == ERANGE, "_mbscat_s returned %d\n", err);
    ok(!dst[0], "dst[0] = %c\n", dst[0]);
    ok(dst[1] == 'a', "dst[1] = %c\n", dst[1]);

    _setmbcp(932);

    dst[0] = 0x81;
    dst[1] = 0x81;
    dst[2] = 0x52;
    dst[3] = 0;
    src[0] = 'a';
    src[1] = 0;
    err = p_mbscat_s(dst, sizeof(dst), src);
    ok(err == 0, "_mbscat_s returned %d\n", err);


    dst[0] = 0;
    src[0] = 0x81;
    src[1] = 0x81;
    src[2] = 0x52;
    src[3] = 0;
    err = p_mbscat_s(dst, sizeof(dst), src);
    ok(err == 0, "_mbscat_s returned %d\n", err);


    dst[0] = 'a';
    dst[1] = 0x81;
    dst[2] = 0;
    src[0] = 'R';
    src[1] = 0;
    err = p_mbscat_s(dst, sizeof(dst), src);
    ok(err == EILSEQ, "_mbscat_s returned %d\n", err);
    ok(!memcmp(dst, "aR", 3), "dst = %s\n", dst);


    dst[0] = 'a';
    dst[1] = 0;
    src[0] = 'b';
    src[1] = 0x81;
    src[2] = 0;
    err = p_mbscat_s(dst, sizeof(dst), src);
    ok(err == EILSEQ, "_mbscat_s returned %d\n", err);
    ok(!memcmp(dst, "ab", 3), "dst = %s\n", dst);
    _setmbcp(prev_cp);
}
