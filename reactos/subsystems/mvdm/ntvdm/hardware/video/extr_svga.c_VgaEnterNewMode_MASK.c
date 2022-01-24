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
typedef  scalar_t__ SCREEN_MODE ;
typedef  int /*<<< orphan*/  PCOORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveFramebuffer ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GRAPHICS_MODE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  GraphicsFramebuffer ; 
 int /*<<< orphan*/  PaletteHandle ; 
 scalar_t__ ScreenMode ; 
 scalar_t__ TEXT_MODE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TextFramebuffer ; 
 int /*<<< orphan*/  TextPaletteHandle ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(SCREEN_MODE NewScreenMode, PCOORD Resolution)
{
    /* Check if the new mode is alphanumeric */
    if (NewScreenMode == TEXT_MODE)
    {
        /* Enter new text mode */

        if (!FUNC4(// &TextFramebuffer,
                                        Resolution,
                                        TextPaletteHandle))
        {
            FUNC0(L"An unexpected VGA error occurred while switching into text mode. Error: %u", FUNC2());
            FUNC1();
            return FALSE;
        }

        /* The active framebuffer is now the text framebuffer */
        ActiveFramebuffer = TextFramebuffer;

        /* Set the screen mode flag */
        ScreenMode = TEXT_MODE;

        return TRUE;
    }
    else
    {
        /* Enter graphics mode */

        if (!FUNC3(// &GraphicsFramebuffer,
                                            Resolution,
                                            PaletteHandle))
        {
            FUNC0(L"An unexpected VGA error occurred while switching into graphics mode. Error: %u", FUNC2());
            FUNC1();
            return FALSE;
        }

        /* The active framebuffer is now the graphics framebuffer */
        ActiveFramebuffer = GraphicsFramebuffer;

        /* Set the screen mode flag */
        ScreenMode = GRAPHICS_MODE;

        return TRUE;
    }
}