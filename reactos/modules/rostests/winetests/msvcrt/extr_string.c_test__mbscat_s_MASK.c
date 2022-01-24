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
typedef  int /*<<< orphan*/  dst ;

/* Variables and functions */
 int EILSEQ ; 
 int EINVAL ; 
 int ERANGE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int FUNC5 (unsigned char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    unsigned char dst[8], src[4];
    int err;
    int prev_cp = FUNC0();

    if(!&p_mbscat_s)
    {
        FUNC6("_mbscat_s not found\n");
        return;
    }


    src[0] = dst[0] = 0;
    err = FUNC5(NULL, sizeof(dst), src);
    FUNC4(err == EINVAL, "_mbscat_s returned %d\n", err);

    err = FUNC5(dst, sizeof(dst), NULL);
    FUNC4(err == EINVAL, "_mbscat_s returned %d\n", err);

    dst[0] = 'a';
    err = FUNC5(dst, 1, src);
    FUNC4(err == EINVAL, "_mbscat_s returned %d\n", err);

    FUNC3(dst, 'a', sizeof(dst));
    dst[6] = 0;
    src[0] = 'b';
    src[1] = 0;

    err = FUNC5(dst, sizeof(dst), src);
    FUNC4(err == 0, "_mbscat_s returned %d\n", err);
    FUNC4(!FUNC2(dst, "aaaaaab", 8), "dst = %s\n", dst);

    err = FUNC5(dst, sizeof(dst), src);
    FUNC4(err == ERANGE, "_mbscat_s returned %d\n", err);
    FUNC4(!dst[0], "dst[0] = %c\n", dst[0]);
    FUNC4(dst[1] == 'a', "dst[1] = %c\n", dst[1]);

    FUNC1(932);
    /* test invalid str in dst */
    dst[0] = 0x81;
    dst[1] = 0x81;
    dst[2] = 0x52;
    dst[3] = 0;
    src[0] = 'a';
    src[1] = 0;
    err = FUNC5(dst, sizeof(dst), src);
    FUNC4(err == 0, "_mbscat_s returned %d\n", err);

    /* test invalid str in src */
    dst[0] = 0;
    src[0] = 0x81;
    src[1] = 0x81;
    src[2] = 0x52;
    src[3] = 0;
    err = FUNC5(dst, sizeof(dst), src);
    FUNC4(err == 0, "_mbscat_s returned %d\n", err);

    /* test dst with leading byte on the end of buffer */
    dst[0] = 'a';
    dst[1] = 0x81;
    dst[2] = 0;
    src[0] = 'R';
    src[1] = 0;
    err = FUNC5(dst, sizeof(dst), src);
    FUNC4(err == EILSEQ, "_mbscat_s returned %d\n", err);
    FUNC4(!FUNC2(dst, "aR", 3), "dst = %s\n", dst);

    /* test src with leading byte on the end of buffer */
    dst[0] = 'a';
    dst[1] = 0;
    src[0] = 'b';
    src[1] = 0x81;
    src[2] = 0;
    err = FUNC5(dst, sizeof(dst), src);
    FUNC4(err == EILSEQ, "_mbscat_s returned %d\n", err);
    FUNC4(!FUNC2(dst, "ab", 3), "dst = %s\n", dst);
    FUNC1(prev_cp);
}