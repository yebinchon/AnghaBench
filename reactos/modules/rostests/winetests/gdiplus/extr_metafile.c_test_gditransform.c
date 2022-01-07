
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int header ;
typedef char WCHAR ;
struct TYPE_13__ {double member_0; double member_1; } ;
struct TYPE_12__ {double member_0; double member_1; double member_2; double member_3; } ;
struct TYPE_11__ {int Type; int Version; } ;
typedef TYPE_1__ MetafileHeader ;
typedef int HENHMETAFILE ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int GpStatus ;
typedef TYPE_2__ GpRectF ;
typedef TYPE_3__ GpPointF ;
typedef int GpMetafile ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBitmap ;
typedef int BYTE ;
typedef int ARGB ;


 int CreateCompatibleDC (int ) ;
 int CreateSolidBrush (int) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int EmfTypeEmfOnly ;
 int GdiComment (int ,int,int const*) ;
 int GdipBitmapGetPixel (int *,int,int,int*) ;
 int GdipCreateBitmapFromScan0 (int,int,int ,int ,int *,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipGetDC (int *,int *) ;
 int GdipGetHemfFromMetafile (int *,int *) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipGetMetafileHeaderFromMetafile (int *,TYPE_1__*) ;
 int GdipRecordMetafile (int ,int ,TYPE_2__ const*,int ,char const*,int **) ;
 int GdipReleaseDC (int *,int ) ;
 int InvalidParameter ;
 int MetafileFrameUnitPixel ;
 int MetafileTypeEmf ;
 int Ok ;
 int PixelFormat32bppARGB ;
 int SelectObject (int ,int ) ;
 int UnitPixel ;
 int check_metafile (int *,int ,char*,TYPE_3__ const*,TYPE_2__ const*,int ) ;
 int expect (int,int) ;
 int gditransform_records ;
 int memset (TYPE_1__*,int,int) ;
 int ok (int,char*,int) ;
 int play_metafile (int *,int *,int ,char*,TYPE_3__ const*,TYPE_2__ const*,int ) ;
 int sync_metafile (int **,char*) ;

__attribute__((used)) static void test_gditransform(void)
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

    hdc = CreateCompatibleDC(0);

    stat = GdipRecordMetafile(hdc, EmfTypeEmfOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    expect(Ok, stat);

    DeleteDC(hdc);

    if (stat != Ok)
            return;

    stat = GdipGetHemfFromMetafile(metafile, &hemf);
    expect(InvalidParameter, stat);

    memset(&header, 0xaa, sizeof(header));
    stat = GdipGetMetafileHeaderFromMetafile(metafile, &header);
    expect(Ok, stat);
    expect(MetafileTypeEmf, header.Type);
    ok(header.Version == 0xdbc01001 || header.Version == 0xdbc01002, "Unexpected version %x\n", header.Version);

    stat = GdipGetImageGraphicsContext((GpImage*)metafile, &graphics);
    expect(Ok, stat);

    stat = GdipGetDC(graphics, &metafile_dc);
    expect(Ok, stat);

    if (stat != Ok)
    {
        GdipDeleteGraphics(graphics);
        GdipDisposeImage((GpImage*)metafile);
        return;
    }

    hbrush = CreateSolidBrush(0xff);

    holdbrush = SelectObject(metafile_dc, hbrush);

    GdiComment(metafile_dc, 8, (const BYTE*)"winetest");

    SelectObject(metafile_dc, holdbrush);

    DeleteObject(hbrush);

    stat = GdipReleaseDC(graphics, metafile_dc);
    expect(Ok, stat);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);

    check_metafile(metafile, gditransform_records, "gditransform metafile", dst_points, &frame, UnitPixel);

    sync_metafile(&metafile, "gditransform.emf");

    stat = GdipCreateBitmapFromScan0(100, 100, 0, PixelFormat32bppARGB, ((void*)0), &bitmap);
    expect(Ok, stat);

    stat = GdipGetImageGraphicsContext((GpImage*)bitmap, &graphics);
    expect(Ok, stat);

    play_metafile(metafile, graphics, gditransform_records, "gditransform playback", dst_points, &frame, UnitPixel);

    stat = GdipBitmapGetPixel(bitmap, 10, 10, &color);
    expect(Ok, stat);
    expect(0xffff0000, color);

    stat = GdipBitmapGetPixel(bitmap, 30, 30, &color);
    expect(Ok, stat);
    expect(0x00000000, color);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);

    stat = GdipDisposeImage((GpImage*)bitmap);
    expect(Ok, stat);

    stat = GdipDisposeImage((GpImage*)metafile);
    expect(Ok, stat);
}
