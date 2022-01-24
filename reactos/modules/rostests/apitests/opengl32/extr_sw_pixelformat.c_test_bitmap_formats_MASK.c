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
struct test_color {int dummy; } ;
typedef  int INT ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int const,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct test_color const**) ; 
 int /*<<< orphan*/  FUNC7 (char*,int const) ; 

__attribute__((used)) static void FUNC8(const struct test_color ** colors)
{
    HBITMAP oldBmp, dib;
    HDC hdc;
    static const INT bpps [] = {4, 8, 16, 24, 32};
    INT i;
    void* dib_buffer;

    hdc = FUNC1(NULL);
    FUNC5 (hdc != NULL, "Failed creating a memory DC.\n");

    for (i = 0; i < FUNC0(bpps); i++)
    {
        dib = FUNC4(bpps[i], &dib_buffer);
        FUNC5(dib != NULL, "Failed to create DIB for %u bpp\n", bpps[i]);

        oldBmp = FUNC3(hdc, dib);
        FUNC5 (oldBmp != NULL, "Failed to select the DIB\n");

        FUNC7("testing DIB %ubpp\n", bpps[i]);
        /* For mem DC, this is always the depth of the screen which is taken into account */
        FUNC6(hdc, colors);

        FUNC3(hdc, oldBmp);
        FUNC2(dib);
    }
}