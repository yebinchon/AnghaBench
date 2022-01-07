
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BOOL ;


 unsigned int ARRAY_SIZE (struct katakana_pair const*) ;


 unsigned int _MB_CP_SBCS ;
 unsigned int _getmbcp () ;
 int _ismbckata (int ) ;
 int _setmbcp (unsigned int) ;
 int ok (int,char*,int,int,...) ;

__attribute__((used)) static void test_ismbckata(void) {
    struct katakana_pair {
        UINT c;
        BOOL exp;
    };
    static const struct katakana_pair tests[] = {
        {0x8152, 129}, {0x8153, 129}, {0x8154, 129}, {0x8155, 129},
        {0x82a0, 129}, {0x833f, 129}, {0x8340, 128 }, {0x837e, 128 },
        {0x837f, 129}, {0x8380, 128 }, {0x8396, 128 }, {0x8397, 129},
        {0xa5, 129}, {0xb0, 129}, {0xdd, 129}
    };
    unsigned int prev_cp = _getmbcp();
    int ret;
    unsigned int i;

    _setmbcp(_MB_CP_SBCS);
    for (i = 0; i < ARRAY_SIZE(tests); i++) {
        ret = _ismbckata(tests[i].c);
        ok(!ret, "expected 0, got %d for %04x\n", ret, tests[i].c);
    }

    _setmbcp(932);
    for (i = 0; i < ARRAY_SIZE(tests); i++) {
        ret = _ismbckata(tests[i].c);
        ok(!!ret == tests[i].exp, "expected %d, got %d for %04x\n",
           tests[i].exp, !!ret, tests[i].c);
    }

    _setmbcp(prev_cp);
}
