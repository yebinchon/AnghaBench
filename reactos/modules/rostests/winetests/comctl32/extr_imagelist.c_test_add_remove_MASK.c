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
typedef  scalar_t__ HIMAGELIST ;
typedef  scalar_t__ HICON ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ILC_COLOR16 ; 
 int /*<<< orphan*/  hinst ; 
 int /*<<< orphan*/  icon_bits ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__,int) ; 
 int FUNC6 (scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(void)
{
    HIMAGELIST himl ;

    HICON hicon1 ;
    HICON hicon2 ;
    HICON hicon3 ;

    /* create an imagelist to play with */
    himl = FUNC3(84, 84, ILC_COLOR16, 0, 3);
    FUNC2(himl!=0,"failed to create imagelist\n");

    /* load the icons to add to the image list */
    hicon1 = FUNC0(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    FUNC2(hicon1 != 0, "no hicon1\n");
    hicon2 = FUNC0(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    FUNC2(hicon2 != 0, "no hicon2\n");
    hicon3 = FUNC0(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    FUNC2(hicon3 != 0, "no hicon3\n");

    /* remove when nothing exists */
    FUNC2(!FUNC5(himl, 0), "Removed nonexistent icon.\n");
    /* removing everything from an empty imagelist should succeed */
    FUNC2(FUNC5(himl, -1), "Removed nonexistent icon\n");

    /* add three */
    FUNC2(0 == FUNC6(himl, -1, hicon1), "Failed to add icon1.\n");
    FUNC2(1 == FUNC6(himl, -1, hicon2), "Failed to add icon2.\n");
    FUNC2(2 == FUNC6(himl, -1, hicon3), "Failed to add icon3.\n");

    /* remove an index out of range */
    FUNC2(!FUNC5(himl, 4711), "removed nonexistent icon\n");

    /* remove three */
    FUNC2(FUNC5(himl, 0), "Can't remove 0\n");
    FUNC2(FUNC5(himl, 0), "Can't remove 0\n");
    FUNC2(FUNC5(himl, 0), "Can't remove 0\n");

    /* remove one extra */
    FUNC2(!FUNC5(himl, 0), "Removed nonexistent icon.\n");

    /* destroy it */
    FUNC2(FUNC4(himl), "Failed to destroy imagelist.\n");

    FUNC2(-1 == FUNC6((HIMAGELIST)0xdeadbeef, -1, hicon1), "Don't crash on bad handle\n");

    FUNC2(FUNC1(hicon1), "Failed to destroy icon 1.\n");
    FUNC2(FUNC1(hicon2), "Failed to destroy icon 2.\n");
    FUNC2(FUNC1(hicon3), "Failed to destroy icon 3.\n");
}