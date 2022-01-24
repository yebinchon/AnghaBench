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
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  BITSPIXEL ; 
 int /*<<< orphan*/  COLORRES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    HDC hdc = FUNC0(NULL);
    int bitspixel, colorres;

    bitspixel = FUNC1(hdc, BITSPIXEL);
    FUNC4(bitspixel != 0, "Expected to get valid BITSPIXEL capability value\n");

    colorres = FUNC1(hdc, COLORRES);
    FUNC4(colorres != 0 ||
       FUNC3(colorres == 0), /* Win9x */
       "Expected to get valid COLORRES capability value\n");

    if (colorres)
    {
        switch (bitspixel)
        {
        case 8:
            FUNC4(colorres == 18,
               "Expected COLORRES to be 18, got %d\n", colorres);
            break;
        case 16:
            FUNC4(colorres == 16,
               "Expected COLORRES to be 16, got %d\n", colorres);
            break;
        case 24:
        case 32:
            FUNC4(colorres == 24,
               "Expected COLORRES to be 24, got %d\n", bitspixel);
            break;
        default:
            FUNC4(0, "Got unknown BITSPIXEL %d with COLORRES %d\n", bitspixel, colorres);
            break;
        }
    }

    FUNC2(NULL, hdc);
}