#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bitmap ;
struct TYPE_7__ {scalar_t__ bmType; int bmWidth; int bmHeight; int bmWidthBytes; int bmPlanes; int bmBitsPixel; int /*<<< orphan*/ * bmBits; } ;
struct TYPE_6__ {scalar_t__ fIcon; int xHotspot; int yHotspot; int /*<<< orphan*/ * hbmColor; int /*<<< orphan*/ * hbmMask; } ;
typedef  TYPE_1__ ICONINFO ;
typedef  scalar_t__ HICON ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;
typedef  TYPE_2__ BITMAP ;

/* Variables and functions */
 void* FUNC0 (int,int,int,int,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

void
FUNC9(BOOL fIcon, DWORD screen_bpp)
{
    HICON hicon;
    ICONINFO iconinfo, iconinfo2;
    BITMAP bitmap;

    iconinfo.fIcon = fIcon;
    iconinfo.xHotspot = 0;
    iconinfo.yHotspot = 0;
    iconinfo.hbmMask = NULL;
    iconinfo.hbmColor = NULL;

    hicon = FUNC2(&iconinfo);
    FUNC8(hicon == 0, "should fail\n");

    iconinfo.hbmMask = FUNC0(8, 16, 1, 1, NULL);
    hicon = FUNC2(&iconinfo);
    FUNC8(hicon != 0, "should not fail\n");

    FUNC8(FUNC6(hicon, &iconinfo2), "\n");
    FUNC8(iconinfo2.fIcon == iconinfo.fIcon, "\n");
    if (fIcon)
    {
        FUNC8(iconinfo2.xHotspot == 4, "%ld\n", iconinfo2.xHotspot);
        FUNC8(iconinfo2.yHotspot == 4, "%ld\n", iconinfo2.yHotspot);
    }
    else
    {
        FUNC8(iconinfo2.xHotspot == 0, "%ld\n", iconinfo2.xHotspot);
        FUNC8(iconinfo2.yHotspot == 0, "%ld\n", iconinfo2.yHotspot);
    }
    FUNC8(iconinfo2.hbmMask != NULL, "\n");
    FUNC8(iconinfo2.hbmMask != iconinfo.hbmMask, "\n");
    FUNC8(iconinfo2.hbmColor == NULL, "\n");
    FUNC3(iconinfo2.hbmMask);

    FUNC8(FUNC6(hicon, &iconinfo2), "\n");
    FUNC8(iconinfo2.fIcon == iconinfo.fIcon, "\n");
    if (fIcon)
    {
        FUNC8(iconinfo2.xHotspot == 4, "%ld\n", iconinfo2.xHotspot);
        FUNC8(iconinfo2.yHotspot == 4, "%ld\n", iconinfo2.yHotspot);
    }
    else
    {
        FUNC8(iconinfo2.xHotspot == 0, "%ld\n", iconinfo2.xHotspot);
        FUNC8(iconinfo2.yHotspot == 0, "%ld\n", iconinfo2.yHotspot);
    }
    FUNC8(iconinfo2.hbmMask != NULL, "\n");
    FUNC8(iconinfo2.hbmMask != iconinfo.hbmMask, "\n");
    FUNC8(iconinfo2.hbmColor == NULL, "\n");
    FUNC3(iconinfo2.hbmMask);
    FUNC8(FUNC4(hicon), "\n");

    iconinfo.hbmColor = FUNC0(2, 2, 1, 1, NULL);
    hicon = FUNC2(&iconinfo);
    FUNC8(hicon != 0, "should not fail\n");

    FUNC8(FUNC6(hicon, &iconinfo2), "\n");
    FUNC8(iconinfo2.fIcon == iconinfo.fIcon, "\n");
    if (fIcon)
    {
        FUNC8(iconinfo2.xHotspot == 4, "%ld\n", iconinfo2.xHotspot);
        FUNC8(iconinfo2.yHotspot == 8, "%ld\n", iconinfo2.yHotspot);
    }
    else
    {
        FUNC8(iconinfo2.xHotspot == 0, "%ld\n", iconinfo2.xHotspot);
        FUNC8(iconinfo2.yHotspot == 0, "%ld\n", iconinfo2.yHotspot);
    }
    FUNC8(iconinfo2.hbmMask != NULL, "\n");
    FUNC8(iconinfo2.hbmMask != iconinfo.hbmMask, "\n");
    FUNC8(iconinfo2.hbmColor != NULL, "\n");
    FUNC8(iconinfo2.hbmColor != iconinfo.hbmColor, "\n");

    FUNC8(FUNC7(iconinfo2.hbmMask, sizeof(bitmap), &bitmap), "GetObject failed\n");
    FUNC8(bitmap.bmType == 0, "\n");
    FUNC8(bitmap.bmWidth == 8, "\n");
    FUNC8(bitmap.bmHeight == 16, "\n");
    FUNC8(bitmap.bmWidthBytes == 2, "\n");
    FUNC8(bitmap.bmPlanes == 1, "\n");
    FUNC8(bitmap.bmBitsPixel == 1, "\n");
    FUNC8(bitmap.bmBits == NULL, "\n");

    FUNC8(FUNC7(iconinfo2.hbmColor, sizeof(bitmap), &bitmap), "GetObject failed\n");
    FUNC8(bitmap.bmType == 0, "\n");
    FUNC8(bitmap.bmWidth == 8, "\n");
    FUNC8(bitmap.bmHeight == 16, "\n");
    FUNC8(bitmap.bmWidthBytes == 8 * bitmap.bmBitsPixel / 8, "\n");
    FUNC8(bitmap.bmPlanes == 1, "\n");
    FUNC8(bitmap.bmBitsPixel == screen_bpp, "%d\n", bitmap.bmBitsPixel);
    FUNC8(bitmap.bmBits == NULL, "\n");
    FUNC3(iconinfo2.hbmMask);
    FUNC3(iconinfo2.hbmColor);
    FUNC8(FUNC4(hicon), "\n");

    FUNC3(iconinfo.hbmMask);
    iconinfo.hbmMask = NULL;
    hicon = FUNC2(&iconinfo);
    FUNC8(hicon == 0, "should fail\n");

    FUNC3(iconinfo.hbmColor);
    iconinfo.hbmColor = FUNC1(FUNC5(0), 16, 16);
    hicon = FUNC2(&iconinfo);
    FUNC8(hicon == 0, "should fail\n");

    iconinfo.hbmMask = FUNC1(FUNC5(0), 8, 16);
    hicon = FUNC2(&iconinfo);
    FUNC8(hicon != 0, "should not fail\n");

    FUNC8(FUNC6(hicon, &iconinfo2), "\n");

    FUNC8(FUNC7(iconinfo2.hbmMask, sizeof(bitmap), &bitmap), "GetObject failed\n");
    FUNC8(bitmap.bmType == 0, "\n");
    FUNC8(bitmap.bmWidth == 8, "%ld\n", bitmap.bmWidth);
    FUNC8(bitmap.bmHeight == 16, "%ld\n", bitmap.bmHeight);
    FUNC8(bitmap.bmWidthBytes == 2, "%ld\n", bitmap.bmWidthBytes);
    FUNC8(bitmap.bmPlanes == 1, "%d\n", bitmap.bmPlanes);
    FUNC8(bitmap.bmBitsPixel == 1, "%d\n", bitmap.bmBitsPixel);
    FUNC8(bitmap.bmBits == NULL, "\n");

    FUNC8(FUNC7(iconinfo2.hbmColor, sizeof(bitmap), &bitmap), "GetObject failed\n");
    FUNC8(bitmap.bmType == 0, "\n");
    FUNC8(bitmap.bmWidth == 8, "%ld\n", bitmap.bmWidth);
    FUNC8(bitmap.bmHeight == 16, "%ld\n", bitmap.bmHeight);
    FUNC8(bitmap.bmWidthBytes == screen_bpp, "%ld\n", bitmap.bmWidthBytes);
    FUNC8(bitmap.bmPlanes == 1, "%d\n", bitmap.bmPlanes);
    FUNC8(bitmap.bmBitsPixel == screen_bpp, "%d\n", bitmap.bmBitsPixel);
    FUNC8(bitmap.bmBits == NULL, "\n");
    FUNC3(iconinfo2.hbmMask);
    FUNC3(iconinfo2.hbmColor);
    FUNC8(FUNC4(hicon), "\n");
}