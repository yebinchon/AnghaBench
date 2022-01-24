#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct test_color {int dummy; } ;
typedef  int /*<<< orphan*/  pfd ;
struct TYPE_3__ {int dwFlags; } ;
typedef  TYPE_1__ PIXELFORMATDESCRIPTOR ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int PFD_GENERIC_FORMAT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/ * test_depths ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct test_color const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(const struct test_color **colors)
{
    int pf, num_pf, ret;
    int i, j;
    HDC hdc;
    HWND hwnd;
    PIXELFORMATDESCRIPTOR pfd;

    hwnd = FUNC1("static", "Title", WS_OVERLAPPEDWINDOW, 10, 10, 200, 200, NULL, NULL,
            NULL, NULL);
    if (!hwnd)
    {
        FUNC6(hwnd != NULL, "Failed to create a window.\n");
        return;
    }

    hdc = FUNC4( hwnd );
    num_pf = FUNC2(hdc, 0, 0, NULL);
    FUNC6(num_pf > 0, "DescribePixelFormat failed.\n");

    for (pf = 1; pf <= num_pf; pf++)
    {
        ret = FUNC2(hdc, pf, sizeof(pfd), &pfd);
        FUNC6(ret == num_pf, "Number of pixel formats changed!\n");

        if (pfd.dwFlags & PFD_GENERIC_FORMAT)
            break;
    }

    FUNC6(pf < num_pf, "No generic pixel format!\n");
    
    /* First the formats compatible with the DC */
    for (i = 0; i < 3; i++)
    {
        /* Single buffered first */
        for (j = 0; j < FUNC0(test_depths); j++)
        {
            FUNC7(hdc, num_pf, pf++, &colors[0][i], test_depths[j], TRUE, FALSE);
        }

        /* Then double buffered */
        for (j = 0; j < FUNC0(test_depths); j++)
        {
            FUNC7(hdc, num_pf, pf++, &colors[0][i], test_depths[j], TRUE, TRUE);
        }
    }
    
    colors++;

    /* Then the rest */
    while (*colors)
    {
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < FUNC0(test_depths); j++)
            {
                FUNC7(hdc, num_pf, pf++, &colors[0][i], test_depths[j], FALSE, FALSE);
            }
        }
        colors++;
    }

    /* We must have tested all generic formats. */
    FUNC6(pf - 1 == num_pf, "We didn't test all generic formats : tested %u, total %u.\n", pf, num_pf);

    FUNC5( hwnd, hdc );
    FUNC3( hwnd );
}