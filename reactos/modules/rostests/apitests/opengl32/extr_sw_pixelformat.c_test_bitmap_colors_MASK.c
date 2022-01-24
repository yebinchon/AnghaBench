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
typedef  int INT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int PFD_GENERIC_FORMAT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/ * test_depths ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct test_color const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(HDC hdc, const struct test_color** colors)
{
    INT num_pf, pf, ret;
    PIXELFORMATDESCRIPTOR pfd;
    INT i, j;

    num_pf = FUNC1(hdc, 0, 0, NULL);
    FUNC2(num_pf > 0, "DescribePixelFormat failed.\n");

    for (pf = 1; pf <= num_pf; pf++)
    {
        ret = FUNC1(hdc, pf, sizeof(pfd), &pfd);
        FUNC2(ret == num_pf, "Number of pixel formats changed!\n");

        if (pfd.dwFlags & PFD_GENERIC_FORMAT)
            break;
    }

    FUNC2(pf < num_pf, "No generic pixel format!\n");

    /* First the formats compatible with the DC */
    for (i = 0; i < 3; i++)
    {
        /* Single buffered first */
        for (j = 0; j < FUNC0(test_depths); j++)
        {
            FUNC3(hdc, num_pf, pf++, &colors[0][i], test_depths[j], TRUE, FALSE);
        }

        /* Then double buffered */
        for (j = 0; j < FUNC0(test_depths); j++)
        {
            FUNC3(hdc, num_pf, pf++, &colors[0][i], test_depths[j], TRUE, TRUE);
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
                FUNC3(hdc, num_pf, pf++, &colors[0][i], test_depths[j], FALSE, FALSE);
            }
        }
        colors++;
    }

    /* We must have tested all generic formats. */
    FUNC2(pf - 1 == num_pf, "We didn't test all generic formats : tested %u, total %u.\n", pf, num_pf);
}