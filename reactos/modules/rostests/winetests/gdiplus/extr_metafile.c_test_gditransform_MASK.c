#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  header ;
typedef  char WCHAR ;
struct TYPE_13__ {double member_0; double member_1; } ;
struct TYPE_12__ {double member_0; double member_1; double member_2; double member_3; } ;
struct TYPE_11__ {int Type; int Version; } ;
typedef  TYPE_1__ MetafileHeader ;
typedef  int /*<<< orphan*/  HENHMETAFILE ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int GpStatus ;
typedef  TYPE_2__ GpRectF ;
typedef  TYPE_3__ GpPointF ;
typedef  int /*<<< orphan*/  GpMetafile ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EmfTypeEmfOnly ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int InvalidParameter ; 
 int /*<<< orphan*/  MetafileFrameUnitPixel ; 
 int MetafileTypeEmf ; 
 int Ok ; 
 int /*<<< orphan*/  PixelFormat32bppARGB ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_3__ const*,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  gditransform_records ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_3__ const*,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC22(void)
{
    GpStatus stat;
    GpMetafile *metafile;
    GpGraphics *graphics;
    HDC hdc, metafile_dc;
    HENHMETAFILE hemf;
    MetafileHeader header;
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};
    static const GpPointF dst_points[3] = {{0.0,0.0},{40.0,0.0},{0.0,40.0}};
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    HBRUSH hbrush, holdbrush;
    GpBitmap *bitmap;
    ARGB color;

    hdc = FUNC0(0);

    stat = FUNC13(hdc, EmfTypeEmfOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    FUNC17(Ok, stat);

    FUNC2(hdc);

    if (stat != Ok)
            return;

    stat = FUNC10(metafile, &hemf);
    FUNC17(InvalidParameter, stat);

    FUNC18(&header, 0xaa, sizeof(header));
    stat = FUNC12(metafile, &header);
    FUNC17(Ok, stat);
    FUNC17(MetafileTypeEmf, header.Type);
    FUNC19(header.Version == 0xdbc01001 || header.Version == 0xdbc01002, "Unexpected version %x\n", header.Version);

    stat = FUNC11((GpImage*)metafile, &graphics);
    FUNC17(Ok, stat);

    stat = FUNC9(graphics, &metafile_dc);
    FUNC17(Ok, stat);

    if (stat != Ok)
    {
        FUNC7(graphics);
        FUNC8((GpImage*)metafile);
        return;
    }

    hbrush = FUNC1(0xff);

    holdbrush = FUNC15(metafile_dc, hbrush);

    FUNC4(metafile_dc, 8, (const BYTE*)"winetest");

    FUNC15(metafile_dc, holdbrush);

    FUNC3(hbrush);

    stat = FUNC14(graphics, metafile_dc);
    FUNC17(Ok, stat);

    stat = FUNC7(graphics);
    FUNC17(Ok, stat);

    FUNC16(metafile, gditransform_records, "gditransform metafile", dst_points, &frame, UnitPixel);

    FUNC21(&metafile, "gditransform.emf");

    stat = FUNC6(100, 100, 0, PixelFormat32bppARGB, NULL, &bitmap);
    FUNC17(Ok, stat);

    stat = FUNC11((GpImage*)bitmap, &graphics);
    FUNC17(Ok, stat);

    FUNC20(metafile, graphics, gditransform_records, "gditransform playback", dst_points, &frame, UnitPixel);

    stat = FUNC5(bitmap, 10, 10, &color);
    FUNC17(Ok, stat);
    FUNC17(0xffff0000, color);

    stat = FUNC5(bitmap, 30, 30, &color);
    FUNC17(Ok, stat);
    FUNC17(0x00000000, color);

    stat = FUNC7(graphics);
    FUNC17(Ok, stat);

    stat = FUNC8((GpImage*)bitmap);
    FUNC17(Ok, stat);

    stat = FUNC8((GpImage*)metafile);
    FUNC17(Ok, stat);
}