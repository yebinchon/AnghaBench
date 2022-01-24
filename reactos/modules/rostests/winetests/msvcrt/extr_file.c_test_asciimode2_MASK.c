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
typedef  int /*<<< orphan*/  obuf ;
typedef  int /*<<< orphan*/  ibuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 scalar_t__ FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    /* Error sequence from one app was getchar followed by small fread
     * with one \r removed had last byte of buffer filled with
     * next byte of *unbuffered* data rather than next byte from buffer
     * Test case is a short string of one byte followed by a newline
     * followed by filler to fill out the sector, then a sector of
     * some different byte.
     */

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

    fp = FUNC1("ascii2.tst", "wt");
    FUNC3(obuf, 1, sizeof(obuf), fp);
    FUNC0(fp);

    fp = FUNC1("ascii2.tst", "rt");
    FUNC6(FUNC4(fp) == '0', "first char not 0\n");
    FUNC5(ibuf, 0, sizeof(ibuf));
    i = FUNC2(ibuf, 1, sizeof(ibuf), fp);
    FUNC6(i == sizeof(ibuf), "fread i %d != sizeof(ibuf)\n", i);
    FUNC6(0 == FUNC7(ibuf, obuf+1, sizeof(ibuf)), "ibuf != obuf\n");
    FUNC0(fp);
    FUNC8("ascii2.tst");
}