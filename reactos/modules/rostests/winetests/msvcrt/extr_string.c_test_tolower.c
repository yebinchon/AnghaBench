
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_ACP ;
 int EILSEQ ;
 int LCMAP_LOWERCASE ;
 int LCMapStringW (int ,int ,int *,int,int *,int) ;
 int LC_ALL ;
 int MB_ERR_INVALID_CHARS ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 scalar_t__ broken (int) ;
 int errno ;
 int ok (int,char*,...) ;
 int p_tolower (int) ;
 int * setlocale (int ,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_tolower(void)
{
    WCHAR chw, lower;
    char ch, lch;
    int ret, len;


    ret = p_tolower(0x41);
    ok(ret == 0x61, "ret = %x\n", ret);

    ret = p_tolower(0xF4);
    ok(ret == 0xF4, "ret = %x\n", ret);

    errno = 0xdeadbeef;
    ret = p_tolower((char)0xF4);
    ok(ret == (char)0xF4, "ret = %x\n", ret);
    ok(errno == 0xdeadbeef, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = p_tolower((char)0xD0);
    ok(ret == (char)0xD0, "ret = %x\n", ret);
    ok(errno == 0xdeadbeef, "errno = %d\n", errno);

    setlocale(LC_ALL, "C");
    errno = 0xdeadbeef;
    ret = p_tolower((char)0xF4);
    ok(ret == (char)0xF4, "ret = %x\n", ret);
    ok(errno == 0xdeadbeef, "errno = %d\n", errno);


    if(!setlocale(LC_ALL, "us")) {
        win_skip("skipping tolower tests that depends on locale\n");
        return;
    }
    setlocale(LC_ALL, "C");

    ch = 0xF4;
    errno = 0xdeadbeef;
    ret = p_tolower(ch);
    if(!MultiByteToWideChar(CP_ACP, MB_ERR_INVALID_CHARS, &ch, 1, &chw, 1) ||
            LCMapStringW(CP_ACP, LCMAP_LOWERCASE, &chw, 1, &lower, 1) != 1 ||
            (len = WideCharToMultiByte(CP_ACP, 0, &lower, 1, &lch, 1, ((void*)0), ((void*)0))) != 1)
        len = 0;
    if(len)
        ok(ret==(unsigned char)lch || broken(ret==ch) , "ret = %x\n", ret);
    else
        ok(ret == ch, "ret = %x\n", ret);
    if(!len || ret==(unsigned char)lch)
        ok(errno == EILSEQ, "errno = %d\n", errno);

    ch = 0xD0;
    errno = 0xdeadbeef;
    ret = p_tolower(ch);
    if(!MultiByteToWideChar(CP_ACP, MB_ERR_INVALID_CHARS, &ch, 1, &chw, 1) ||
            LCMapStringW(CP_ACP, LCMAP_LOWERCASE, &chw, 1, &lower, 1) != 1 ||
            (len = WideCharToMultiByte(CP_ACP, 0, &lower, 1, &lch, 1, ((void*)0), ((void*)0))) != 1)
        len = 0;
    if(len)
        ok(ret==(unsigned char)lch || broken(ret==ch) , "ret = %x\n", ret);
    else
        ok(ret == ch, "ret = %x\n", ret);
    if(!len || ret==(unsigned char)lch)
        ok(errno == EILSEQ, "errno = %d\n", errno);

    ret = p_tolower(0xD0);
    ok(ret == 0xD0, "ret = %x\n", ret);

    ok(setlocale(LC_ALL, "us") != ((void*)0), "setlocale failed\n");

    ret = p_tolower((char)0xD0);
    ok(ret == 0xF0, "ret = %x\n", ret);

    ret = p_tolower(0xD0);
    ok(ret == 0xF0, "ret = %x\n", ret);

    setlocale(LC_ALL, "C");
}
