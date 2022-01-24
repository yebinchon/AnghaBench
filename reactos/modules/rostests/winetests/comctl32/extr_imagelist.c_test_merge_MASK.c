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
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int /*<<< orphan*/ * HICON ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  empty_bits ; 
 int /*<<< orphan*/  hinst ; 
 int /*<<< orphan*/  icon_bits ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
    HIMAGELIST himl1, himl2, hmerge;
    HICON hicon1;
    HWND hwnd = FUNC4();

    himl1 = FUNC6(32, 32, 0, 0, 3);
    FUNC5(himl1 != NULL,"failed to create himl1\n");

    himl2 = FUNC6(32, 32, 0, 0, 3);
    FUNC5(himl2 != NULL,"failed to create himl2\n");

    hicon1 = FUNC0(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    FUNC5(hicon1 != NULL, "failed to create hicon1\n");

    if (!himl1 || !himl2 || !hicon1)
        return;

    FUNC5(0 == FUNC9(himl2, -1, hicon1), "Failed to add icon1 to himl2.\n");
    FUNC3(hwnd, himl2, 0, 32, icon_bits, "add icon1 to himl2");

    /* If himl1 has no images, merge still succeeds */
    hmerge = FUNC8(himl1, -1, himl2, 0, 0, 0);
    FUNC5(hmerge != NULL, "merge himl1,-1 failed\n");
    FUNC3(hwnd, hmerge, 0, 32, empty_bits, "merge himl1,-1");
    FUNC7(hmerge);

    hmerge = FUNC8(himl1, 0, himl2, 0, 0, 0);
    FUNC5(hmerge != NULL,"merge himl1,0 failed\n");
    FUNC3(hwnd, hmerge, 0, 32, empty_bits, "merge himl1,0");
    FUNC7(hmerge);

    /* Same happens if himl2 is empty */
    FUNC7(himl2);
    himl2 = FUNC6(32, 32, 0, 0, 3);
    FUNC5(himl2 != NULL,"failed to recreate himl2\n");
    if (!himl2)
        return;

    hmerge = FUNC8(himl1, -1, himl2, -1, 0, 0);
    FUNC5(hmerge != NULL, "merge himl2,-1 failed\n");
    FUNC3(hwnd, hmerge, 0, 32, empty_bits, "merge himl2,-1");
    FUNC7(hmerge);

    hmerge = FUNC8(himl1, -1, himl2, 0, 0, 0);
    FUNC5(hmerge != NULL, "merge himl2,0 failed\n");
    FUNC3(hwnd, hmerge, 0, 32, empty_bits, "merge himl2,0");
    FUNC7(hmerge);

    /* Now try merging an image with itself */
    FUNC5(0 == FUNC9(himl2, -1, hicon1), "Failed to re-add icon1 to himl2.\n");

    hmerge = FUNC8(himl2, 0, himl2, 0, 0, 0);
    FUNC5(hmerge != NULL, "merge himl2 with itself failed\n");
    FUNC3(hwnd, hmerge, 0, 32, empty_bits, "merge himl2 with itself");
    FUNC7(hmerge);

    /* Try merging 2 different image lists */
    FUNC5(0 == FUNC9(himl1, -1, hicon1), "Failed to add icon1 to himl1.\n");

    hmerge = FUNC8(himl1, 0, himl2, 0, 0, 0);
    FUNC5(hmerge != NULL, "merge himl1 with himl2 failed\n");
    FUNC3(hwnd, hmerge, 0, 32, empty_bits, "merge himl1 with himl2");
    FUNC7(hmerge);

    hmerge = FUNC8(himl1, 0, himl2, 0, 8, 16);
    FUNC5(hmerge != NULL, "merge himl1 with himl2 8,16 failed\n");
    FUNC3(hwnd, hmerge, 0, 32, empty_bits, "merge himl1 with himl2, 8,16");
    FUNC7(hmerge);

    FUNC7(himl1);
    FUNC7(himl2);
    FUNC1(hicon1);
    FUNC2(hwnd);
}