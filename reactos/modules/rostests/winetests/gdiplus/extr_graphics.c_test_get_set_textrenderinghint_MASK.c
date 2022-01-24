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
typedef  int /*<<< orphan*/  TextRenderingHint ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpGraphics ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidParameter ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TextRenderingHintAntiAlias ; 
 scalar_t__ TextRenderingHintAntiAliasGridFit ; 
 scalar_t__ TextRenderingHintClearTypeGridFit ; 
 scalar_t__ TextRenderingHintSystemDefault ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpGraphics *graphics;
    HDC hdc = FUNC4( hwnd );
    GpStatus status;
    TextRenderingHint hint;

    FUNC7(hdc != NULL, "Expected HDC to be initialized\n");
    status = FUNC0(hdc, &graphics);
    FUNC6(Ok, status);
    FUNC7(graphics != NULL, "Expected graphics to be initialized\n");

    status = FUNC2(NULL, &hint);
    FUNC6(InvalidParameter, status);

    status = FUNC2(graphics, NULL);
    FUNC6(InvalidParameter, status);

    status = FUNC3(NULL, TextRenderingHintAntiAlias);
    FUNC6(InvalidParameter, status);

    /* out of range */
    status = FUNC3(graphics, TextRenderingHintClearTypeGridFit+1);
    FUNC6(InvalidParameter, status);

    status = FUNC2(graphics, &hint);
    FUNC6(Ok, status);
    FUNC6(TextRenderingHintSystemDefault, hint);

    status = FUNC3(graphics, TextRenderingHintSystemDefault);
    FUNC6(Ok, status);

    status = FUNC2(graphics, &hint);
    FUNC6(Ok, status);
    FUNC6(TextRenderingHintSystemDefault, hint);

    status = FUNC3(graphics, TextRenderingHintAntiAliasGridFit);
    FUNC6(Ok, status);

    status = FUNC2(graphics, &hint);
    FUNC6(Ok, status);
    FUNC6(TextRenderingHintAntiAliasGridFit, hint);

    FUNC1(graphics);

    FUNC5(hwnd, hdc);
}