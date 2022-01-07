
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int LC_ALL ;
 int _getmbcp () ;
 int _setmbcp (int) ;
 int ok (int,char*,int) ;
 int p_wctob (int) ;
 int setlocale (int ,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_wctob(void)
{
    int ret, cp = _getmbcp();

    if(!p_wctob || !setlocale(LC_ALL, "chinese-traditional")) {
        win_skip("Skipping wctob tests\n");
        return;
    }

    ret = p_wctob(0x8141);
    ok(ret == EOF, "ret = %x\n", ret);

    ret = p_wctob(0x81);
    ok(ret == EOF, "ret = %x\n", ret);

    ret = p_wctob(0xe0);
    ok(ret == 0x61, "ret = %x\n", ret);

    _setmbcp(1250);
    ret = p_wctob(0x81);
    ok(ret == EOF, "ret = %x\n", ret);

    setlocale(LC_ALL, "C");
    ret = p_wctob(0x8141);
    ok(ret == EOF, "ret = %x\n", ret);

    ret = p_wctob(0x81);
    ok(ret == (int)(char)0x81, "ret = %x\n", ret);

    ret = p_wctob(0x9f);
    ok(ret == (int)(char)0x9f, "ret = %x\n", ret);

    ret = p_wctob(0xe0);
    ok(ret == (int)(char)0xe0, "ret = %x\n", ret);

    _setmbcp(cp);
}
