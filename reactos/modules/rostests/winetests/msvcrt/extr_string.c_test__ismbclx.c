
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _getmbcp () ;
 int _ismbcl0 (int) ;
 int _ismbcl1 (int) ;
 int _ismbcl2 (int) ;
 int _setmbcp (int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test__ismbclx(void)
{
    int ret, cp = _getmbcp();

    ret = _ismbcl0(0);
    ok(!ret, "got %d\n", ret);

    ret = _ismbcl1(0);
    ok(!ret, "got %d\n", ret);

    ret = _ismbcl2(0);
    ok(!ret, "got %d\n", ret);

    _setmbcp(1252);

    ret = _ismbcl0(0x8140);
    ok(!ret, "got %d\n", ret);

    ret = _ismbcl1(0x889f);
    ok(!ret, "got %d\n", ret);

    ret = _ismbcl2(0x989f);
    ok(!ret, "got %d\n", ret);

    _setmbcp(932);

    ret = _ismbcl0(0);
    ok(!ret, "got %d\n", ret);

    ret = _ismbcl0(0x8140);
    ok(ret, "got %d\n", ret);

    ret = _ismbcl0(0x817f);
    ok(!ret, "got %d\n", ret);

    ret = _ismbcl1(0);
    ok(!ret, "got %d\n", ret);

    ret = _ismbcl1(0x889f);
    ok(ret, "got %d\n", ret);

    ret = _ismbcl1(0x88fd);
    ok(!ret, "got %d\n", ret);

    ret = _ismbcl2(0);
    ok(!ret, "got %d\n", ret);

    ret = _ismbcl2(0x989f);
    ok(ret, "got %d\n", ret);

    ret = _ismbcl2(0x993f);
    ok(!ret, "got %d\n", ret);

    _setmbcp(cp);
}
