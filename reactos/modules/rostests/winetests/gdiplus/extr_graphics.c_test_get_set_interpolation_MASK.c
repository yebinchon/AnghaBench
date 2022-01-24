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
typedef  int /*<<< orphan*/  InterpolationMode ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpGraphics ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ InterpolationModeBilinear ; 
 scalar_t__ InterpolationModeDefault ; 
 scalar_t__ InterpolationModeHighQuality ; 
 scalar_t__ InterpolationModeHighQualityBicubic ; 
 scalar_t__ InterpolationModeInvalid ; 
 scalar_t__ InterpolationModeLowQuality ; 
 scalar_t__ InterpolationModeNearestNeighbor ; 
 scalar_t__ InvalidParameter ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpGraphics *graphics;
    HDC hdc = FUNC4( hwnd );
    GpStatus status;
    InterpolationMode mode;

    FUNC7(hdc != NULL, "Expected HDC to be initialized\n");
    status = FUNC0(hdc, &graphics);
    FUNC6(Ok, status);
    FUNC7(graphics != NULL, "Expected graphics to be initialized\n");

    status = FUNC2(NULL, &mode);
    FUNC6(InvalidParameter, status);

    if (0)
    {
        /* Crashes on Windows XP */
        status = FUNC2(graphics, NULL);
        FUNC6(InvalidParameter, status);
    }

    status = FUNC3(NULL, InterpolationModeNearestNeighbor);
    FUNC6(InvalidParameter, status);

    /* out of range */
    status = FUNC3(graphics, InterpolationModeHighQualityBicubic+1);
    FUNC6(InvalidParameter, status);

    status = FUNC3(graphics, InterpolationModeInvalid);
    FUNC6(InvalidParameter, status);

    status = FUNC2(graphics, &mode);
    FUNC6(Ok, status);
    FUNC6(InterpolationModeBilinear, mode);

    status = FUNC3(graphics, InterpolationModeNearestNeighbor);
    FUNC6(Ok, status);

    status = FUNC2(graphics, &mode);
    FUNC6(Ok, status);
    FUNC6(InterpolationModeNearestNeighbor, mode);

    status = FUNC3(graphics, InterpolationModeDefault);
    FUNC6(Ok, status);

    status = FUNC2(graphics, &mode);
    FUNC6(Ok, status);
    FUNC6(InterpolationModeBilinear, mode);

    status = FUNC3(graphics, InterpolationModeLowQuality);
    FUNC6(Ok, status);

    status = FUNC2(graphics, &mode);
    FUNC6(Ok, status);
    FUNC6(InterpolationModeBilinear, mode);

    status = FUNC3(graphics, InterpolationModeHighQuality);
    FUNC6(Ok, status);

    status = FUNC2(graphics, &mode);
    FUNC6(Ok, status);
    FUNC6(InterpolationModeHighQualityBicubic, mode);

    FUNC1(graphics);

    FUNC5(hwnd, hdc);
}