#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int Argb; } ;
struct TYPE_9__ {int Argb; } ;
struct TYPE_12__ {TYPE_2__ newColor; TYPE_1__ oldColor; } ;
struct TYPE_11__ {int Count; int* Entries; } ;
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  GpImageAttributes ;
typedef  TYPE_3__ ColorPalette ;
typedef  TYPE_4__ ColorMap ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int ColorAdjustTypeBitmap ; 
 int ColorAdjustTypeBrush ; 
 int ColorAdjustTypeDefault ; 
 TYPE_3__* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(void)
{
    ColorMap colormap;
    GpImageAttributes *imageattributes;
    ColorPalette *palette;
    GpStatus stat;

    stat = FUNC1(&imageattributes);
    FUNC6(Ok, stat);

    colormap.oldColor.Argb = 0xffffff00;
    colormap.newColor.Argb = 0xffff00ff;
    stat = FUNC5(imageattributes, ColorAdjustTypeBitmap,
        TRUE, 1, &colormap);
    FUNC6(Ok, stat);

    colormap.oldColor.Argb = 0xffffff80;
    colormap.newColor.Argb = 0xffff80ff;
    stat = FUNC5(imageattributes, ColorAdjustTypeDefault,
        TRUE, 1, &colormap);
    FUNC6(Ok, stat);

    palette = FUNC0(sizeof(*palette) + sizeof(ARGB) * 2);
    palette->Count = 0;

    stat = FUNC4(imageattributes, palette, ColorAdjustTypeBitmap);
    FUNC6(InvalidParameter, stat);

    palette->Count = 3;
    palette->Entries[0] = 0xffffff00;
    palette->Entries[1] = 0xffffff80;
    palette->Entries[2] = 0xffffffff;

    stat = FUNC4(imageattributes, palette, ColorAdjustTypeBitmap);
    FUNC6(Ok, stat);
    FUNC6(0xffff00ff, palette->Entries[0]);
    FUNC6(0xffffff80, palette->Entries[1]);
    FUNC6(0xffffffff, palette->Entries[2]);

    palette->Entries[0] = 0xffffff00;
    palette->Entries[1] = 0xffffff80;
    palette->Entries[2] = 0xffffffff;

    stat = FUNC4(imageattributes, palette, ColorAdjustTypeBrush);
    FUNC6(Ok, stat);
    FUNC6(0xffffff00, palette->Entries[0]);
    FUNC6(0xffff80ff, palette->Entries[1]);
    FUNC6(0xffffffff, palette->Entries[2]);

    stat = FUNC4(NULL, palette, ColorAdjustTypeBitmap);
    FUNC6(InvalidParameter, stat);

    stat = FUNC4(imageattributes, NULL, ColorAdjustTypeBitmap);
    FUNC6(InvalidParameter, stat);

    stat = FUNC4(imageattributes, palette, -1);
    FUNC6(InvalidParameter, stat);

    stat = FUNC4(imageattributes, palette, ColorAdjustTypeDefault);
    FUNC6(InvalidParameter, stat);

    FUNC3(palette);
    FUNC2(imageattributes);
}