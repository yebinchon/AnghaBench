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
typedef  int /*<<< orphan*/  todo_wine ;
struct GdiplusStartupInput {int GdiplusVersion; scalar_t__ SuppressExternalCodecs; scalar_t__ SuppressBackgroundThread; int /*<<< orphan*/ * DebugEventCallback; } ;
typedef  int /*<<< orphan*/  status ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int Status ;
typedef  int /*<<< orphan*/  GpPen ;
typedef  int /*<<< orphan*/  GdiplusNotInitialized ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct GdiplusStartupInput*,int /*<<< orphan*/ *) ; 
 int Ok ; 
 int /*<<< orphan*/  UnitPixel ; 
 int UnsupportedGdiplusVersion ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    GpPen *pen = NULL;
    Status status;
    struct GdiplusStartupInput gdiplusStartupInput;
    ULONG_PTR gdiplusToken;
    int gpversion;

    gdiplusStartupInput.DebugEventCallback          = NULL;
    gdiplusStartupInput.SuppressBackgroundThread    = 0;
    gdiplusStartupInput.SuppressExternalCodecs      = 0;

    for (gpversion=1; gpversion<256; gpversion++)
    {
        gdiplusStartupInput.GdiplusVersion = gpversion;
        status = FUNC3(&gdiplusToken, &gdiplusStartupInput, NULL);
        FUNC4(status == Ok || status == UnsupportedGdiplusVersion,
            "GdiplusStartup returned %x\n", status);
        FUNC2(gdiplusToken);
        if (status != Ok)
        {
            gpversion--;
            break;
        }
    }

    FUNC4(gpversion > 0 && gpversion <= 2, "unexpected gdiplus version %i\n", gpversion);
    FUNC5("gdiplus version is %i\n", gpversion);

    status = FUNC0((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);

    todo_wine
        FUNC7(GdiplusNotInitialized, status);

    FUNC1(pen);
}