#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  logfont ;
typedef  char WCHAR ;
struct TYPE_10__ {int lfHeight; int /*<<< orphan*/  lfCharSet; int /*<<< orphan*/  lfFaceName; } ;
struct TYPE_9__ {int member_0; int member_1; } ;
struct TYPE_8__ {int Height; scalar_t__ Width; scalar_t__ Y; scalar_t__ X; } ;
typedef  TYPE_1__ RectF ;
typedef  TYPE_2__ PointF ;
typedef  TYPE_3__ LOGFONTA ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStringFormat ;
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpSolidFill ;
typedef  int /*<<< orphan*/  GpMatrix ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpFont ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_CHARSET ; 
 int DriverStringOptionsCmapLookup ; 
 scalar_t__ FileNotFound ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__ const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 scalar_t__ NotTrueTypeFont ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  hwnd ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC18(void)
{
    GpStatus status;
    GpGraphics *graphics = NULL;
    GpFont *fnt = NULL;
    RectF  rect;
    GpStringFormat *format;
    GpBrush *brush;
    LOGFONTA logfont;
    HDC hdc = FUNC12( hwnd );
    static const WCHAR string[] = {'T','e','s','t',0};
    static const PointF positions[4] = {{0,0}, {1,1}, {2,2}, {3,3}};
    GpMatrix *matrix;

    FUNC15(&logfont,0,sizeof(logfont));
    FUNC17(logfont.lfFaceName,"Arial");
    logfont.lfHeight = 12;
    logfont.lfCharSet = DEFAULT_CHARSET;

    status = FUNC1(hdc, &graphics);
    FUNC14(Ok, status);

    status = FUNC0(hdc, &logfont, &fnt);
    if (status == NotTrueTypeFont || status == FileNotFound)
    {
        FUNC16("Arial not installed.\n");
        return;
    }
    FUNC14(Ok, status);

    status = FUNC3((ARGB)0xdeadbeef, (GpSolidFill**)&brush);
    FUNC14(Ok, status);

    status = FUNC4(0,0,&format);
    FUNC14(Ok, status);

    rect.X = 0;
    rect.Y = 0;
    rect.Width = 0;
    rect.Height = 12;

    status = FUNC11(graphics, string, 4, fnt, &rect, format, brush);
    FUNC14(Ok, status);

    status = FUNC2(&matrix);
    FUNC14(Ok, status);

    status = FUNC10(NULL, string, 4, fnt, brush, positions, DriverStringOptionsCmapLookup, matrix);
    FUNC14(InvalidParameter, status);

    status = FUNC10(graphics, NULL, 4, fnt, brush, positions, DriverStringOptionsCmapLookup, matrix);
    FUNC14(InvalidParameter, status);

    status = FUNC10(graphics, string, 4, NULL, brush, positions, DriverStringOptionsCmapLookup, matrix);
    FUNC14(InvalidParameter, status);

    status = FUNC10(graphics, string, 4, fnt, NULL, positions, DriverStringOptionsCmapLookup, matrix);
    FUNC14(InvalidParameter, status);

    status = FUNC10(graphics, string, 4, fnt, brush, NULL, DriverStringOptionsCmapLookup, matrix);
    FUNC14(InvalidParameter, status);

    status = FUNC10(graphics, string, 4, fnt, brush, positions, DriverStringOptionsCmapLookup|0x10, matrix);
    FUNC14(Ok, status);

    status = FUNC10(graphics, string, 4, fnt, brush, positions, DriverStringOptionsCmapLookup, NULL);
    FUNC14(Ok, status);

    status = FUNC10(graphics, string, 4, fnt, brush, positions, DriverStringOptionsCmapLookup, matrix);
    FUNC14(Ok, status);

    FUNC8(matrix);
    FUNC7(graphics);
    FUNC5(brush);
    FUNC6(fnt);
    FUNC9(format);

    FUNC13(hwnd, hdc);
}