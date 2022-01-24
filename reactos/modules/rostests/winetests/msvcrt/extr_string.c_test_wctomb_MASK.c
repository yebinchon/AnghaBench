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
typedef  int mbstate_t ;
typedef  int /*<<< orphan*/  dst ;

/* Variables and functions */
 int EILSEQ ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 size_t FUNC1 (char*,int,int*) ; 
 int FUNC2 (size_t*,char*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    mbstate_t state;
    unsigned char dst[10];
    size_t ret;
    int err;

    if(!&p_wcrtomb || !FUNC3(LC_ALL, "Japanese_Japan.932")) {
        FUNC4("wcrtomb tests\n");
        return;
    }

    ret = FUNC1(NULL, 0x3042, NULL);
    FUNC0(ret == 2, "wcrtomb did not return 2\n");

    state = 1;
    dst[2] = 'a';
    ret = FUNC1((char*)dst, 0x3042, &state);
    FUNC0(ret == 2, "wcrtomb did not return 2\n");
    FUNC0(state == 0, "state != 0\n");
    FUNC0(dst[0] == 0x82, "dst[0] = %x, expected 0x82\n", dst[0]);
    FUNC0(dst[1] == 0xa0, "dst[1] = %x, expected 0xa0\n", dst[1]);
    FUNC0(dst[2] == 'a', "dst[2] != 'a'\n");

    ret = FUNC1((char*)dst, 0x3043, NULL);
    FUNC0(ret == 2, "wcrtomb did not return 2\n");
    FUNC0(dst[0] == 0x82, "dst[0] = %x, expected 0x82\n", dst[0]);
    FUNC0(dst[1] == 0xa1, "dst[1] = %x, expected 0xa1\n", dst[1]);

    ret = FUNC1((char*)dst, 0x20, NULL);
    FUNC0(ret == 1, "wcrtomb did not return 1\n");
    FUNC0(dst[0] == 0x20, "dst[0] = %x, expected 0x20\n", dst[0]);

    ret = FUNC1((char*)dst, 0xffff, NULL);
    FUNC0(ret == -1, "wcrtomb did not return -1\n");
    FUNC0(dst[0] == 0x3f, "dst[0] = %x, expected 0x3f\n", dst[0]);

    if(!&p_wcrtomb_s) {
        FUNC4("wcrtomb_s tests\n");
        FUNC3(LC_ALL, "C");
        return;
    }

    state = 1;
    dst[2] = 'a';
    err = FUNC2(&ret, (char*)dst, sizeof(dst), 0x3042, &state);
    FUNC0(!err, "err = %d\n", err);
    FUNC0(ret == 2, "ret != 2\n");
    FUNC0(!state, "state != 0\n");
    FUNC0(dst[0] == 0x82, "dst[0] = %x, expected 0x82\n", dst[0]);
    FUNC0(dst[1] == 0xa0, "dst[1] = %x, expected 0xa0\n", dst[1]);
    FUNC0(dst[2] == 'a', "dst[2] != 'a'\n");

    err = FUNC2(&ret, (char*)dst, sizeof(dst), 0x3042, NULL);
    FUNC0(!err, "err = %d\n", err);
    FUNC0(ret == 2, "ret != 2\n");
    FUNC0(!state, "state != 0\n");
    FUNC0(dst[0] == 0x82, "dst[0] = %x, expected 0x82\n", dst[0]);
    FUNC0(dst[1] == 0xa0, "dst[1] = %x, expected 0xa0\n", dst[1]);

    err = FUNC2(&ret, (char*)dst, sizeof(dst), 0x20, NULL);
    FUNC0(!err, "err = %d\n", err);
    FUNC0(ret == 1, "ret != 1\n");
    FUNC0(dst[0] == 0x20, "dst[0] = %x, expected 0x20\n", dst[0]);

    err = FUNC2(&ret, NULL, 0, 0x20, NULL);
    FUNC0(!err, "err = %d\n", err);
    FUNC0(ret == 1, "ret != 1\n");

    err = FUNC2(&ret, (char*)dst, sizeof(dst), 0xffff, NULL);
    FUNC0(err == EILSEQ, "err = %d\n", err);
    FUNC0(ret == -1, "wcrtomb did not return -1\n");
    FUNC0(dst[0] == 0x3f, "dst[0] = %x, expected 0x3f\n", dst[0]);

    FUNC3(LC_ALL, "C");
}