#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
typedef  int BOOL ;

/* Variables and functions */
 unsigned int FUNC0 (struct katakana_pair const*) ; 
#define  FALSE 129 
#define  TRUE 128 
 unsigned int _MB_CP_SBCS ; 
 unsigned int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int,...) ; 

__attribute__((used)) static void FUNC5(void) {
    struct katakana_pair {
        UINT c;
        BOOL exp;
    };
    static const struct katakana_pair tests[] = {
        {0x8152, FALSE}, {0x8153, FALSE}, {0x8154, FALSE}, {0x8155, FALSE},
        {0x82a0, FALSE}, {0x833f, FALSE}, {0x8340, TRUE }, {0x837e, TRUE },
        {0x837f, FALSE}, {0x8380, TRUE }, {0x8396, TRUE }, {0x8397, FALSE},
        {0xa5, FALSE}, {0xb0, FALSE}, {0xdd, FALSE}
    };
    unsigned int prev_cp = FUNC1();
    int ret;
    unsigned int i;

    FUNC3(_MB_CP_SBCS);
    for (i = 0; i < FUNC0(tests); i++) {
        ret = FUNC2(tests[i].c);
        FUNC4(!ret, "expected 0, got %d for %04x\n", ret, tests[i].c);
    }

    FUNC3(932);
    for (i = 0; i < FUNC0(tests); i++) {
        ret = FUNC2(tests[i].c);
        FUNC4(!!ret == tests[i].exp, "expected %d, got %d for %04x\n",
           tests[i].exp, !!ret, tests[i].c);
    }

    FUNC3(prev_cp);
}