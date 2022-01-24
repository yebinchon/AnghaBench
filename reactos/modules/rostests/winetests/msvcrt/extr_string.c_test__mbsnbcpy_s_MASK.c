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
typedef  int /*<<< orphan*/  small ;
typedef  int /*<<< orphan*/  dest ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned char,...) ; 
 int FUNC2 (unsigned char*,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    unsigned char dest[8];
    const unsigned char big[] = "atoolongstringforthislittledestination";
    const unsigned char small[] = "small";
    int ret;

    if(!&p_mbsnbcpy_s)
    {
        FUNC3("_mbsnbcpy_s not found\n");
        return;
    }

    FUNC0(dest, 'X', sizeof(dest));
    ret = FUNC2(dest, sizeof(dest), small, sizeof(small));
    FUNC1(ret == 0, "_mbsnbcpy_s: Copying a string into a big enough destination returned %d, expected 0\n", ret);
    FUNC1(dest[0] == 's' && dest[1] == 'm' && dest[2] == 'a' && dest[3] == 'l' &&
       dest[4] == 'l' && dest[5] == '\0'&& dest[6] == 'X' && dest[7] == 'X',
       "Unexpected return data from _mbsnbcpy_s: 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n",
       dest[0], dest[1], dest[2], dest[3], dest[4], dest[5], dest[6], dest[7]);

    /* WTF? */
    FUNC0(dest, 'X', sizeof(dest));
    ret = FUNC2(dest, sizeof(dest) - 2, big, sizeof(small));
    FUNC1(ret == ERANGE, "_mbsnbcpy_s: Copying a too long string returned %d, expected ERANGE\n", ret);
    FUNC1(dest[0] == '\0'&& dest[1] == 't' && dest[2] == 'o' && dest[3] == 'o' &&
       dest[4] == 'l' && dest[5] == 'o' && dest[6] == 'X' && dest[7] == 'X',
       "Unexpected return data from _mbsnbcpy_s: 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n",
       dest[0], dest[1], dest[2], dest[3], dest[4], dest[5], dest[6], dest[7]);

    FUNC0(dest, 'X', sizeof(dest));
    ret = FUNC2(dest, sizeof(dest) - 2, big, 4);
    FUNC1(ret == 0, "_mbsnbcpy_s: Copying a too long string with a count cap returned %d, expected 0\n", ret);
    FUNC1(dest[0] == 'a' && dest[1] == 't' && dest[2] == 'o' && dest[3] == 'o' &&
       dest[4] == '\0'&& dest[5] == 'X' && dest[6] == 'X' && dest[7] == 'X',
       "Unexpected return data from _mbsnbcpy_s: 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n",
       dest[0], dest[1], dest[2], dest[3], dest[4], dest[5], dest[6], dest[7]);

    FUNC0(dest, 'X', sizeof(dest));
    ret = FUNC2(dest, sizeof(dest) - 2, small, sizeof(small) + 10);
    FUNC1(ret == 0, "_mbsnbcpy_s: Copying more data than the source string len returned %d, expected 0\n", ret);
    FUNC1(dest[0] == 's' && dest[1] == 'm' && dest[2] == 'a' && dest[3] == 'l' &&
       dest[4] == 'l' && dest[5] == '\0'&& dest[6] == 'X' && dest[7] == 'X',
       "Unexpected return data from _mbsnbcpy_s: 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n",
       dest[0], dest[1], dest[2], dest[3], dest[4], dest[5], dest[6], dest[7]);
}