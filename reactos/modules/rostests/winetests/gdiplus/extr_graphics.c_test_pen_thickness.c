
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct test_data TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct test_data {int res_x; int res_y; int scale; int pen_unit; int page_unit; int pen_width; scalar_t__ cx; scalar_t__ cy; scalar_t__ path_cx; scalar_t__ path_cy; } ;
struct TYPE_8__ {int Stride; scalar_t__ Scan0; } ;
struct TYPE_7__ {double X; double Y; } ;
typedef int REAL ;
typedef scalar_t__ INT ;
typedef int GpUnit ;
typedef int GpStatus ;
typedef TYPE_1__ GpPointF ;
typedef int GpPen ;
typedef int GpPath ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBitmap ;
typedef TYPE_2__ BitmapData ;
typedef int BYTE ;


 int ARRAY_SIZE (TYPE_6__ const*) ;
 int CoordinateSpaceDevice ;
 int CoordinateSpaceWorld ;
 int FillModeAlternate ;
 int GdipAddPathLine (int *,int,int,int,int) ;
 int GdipBitmapLockBits (int *,int *,int ,int ,TYPE_2__*) ;
 int GdipBitmapSetResolution (int *,int ,int ) ;
 int GdipBitmapUnlockBits (int *,TYPE_2__*) ;
 int GdipClosePathFigure (int *) ;
 int GdipCreateBitmapFromScan0 (int,int,int ,int ,int *,int **) ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreatePen1 (int,int ,int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeletePath (int *) ;
 int GdipDeletePen (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipDrawLine (int *,int *,int,int,int,int) ;
 int GdipDrawPath (int *,int *,int *) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipGraphicsClear (int *,int) ;
 int GdipSetPageScale (int *,int ) ;
 int GdipSetPageUnit (int *,int ) ;
 int GdipTransformPoints (int *,int ,int ,TYPE_1__*,int) ;
 int ImageLockModeRead ;
 int Ok ;
 int PixelFormat24bppRGB ;



 int expect (int ,int ) ;
 int ok (int,char*,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static void test_pen_thickness(void)
{
    static const struct test_data
    {
        REAL res_x, res_y, scale;
        GpUnit pen_unit, page_unit;
        REAL pen_width;
        INT cx, cy, path_cx, path_cy;
    } td[] =
    {
        { 10.0, 10.0, 1.0, 129, 129, 1.0, 1, 1, 1, 1 },
        { 10.0, 10.0, 1.0, 129, 129, 0.0, 0, 0, 1, 1 },
        { 10.0, 10.0, 1.0, 129, 129, 0.1, 1, 1, 1, 1 },
        { 10.0, 10.0, 3.0, 129, 129, 2.0, 2, 2, 2, 2 },
        { 10.0, 10.0, 30.0, 129, 130, 1.0, 1, 1, 1, 1 },
        { 10.0, 10.0, 1.0, 128, 129, 1.0, 1, 1, 1, 1 },
        { 10.0, 10.0, 1.0, 128, 129, 0.0, 1, 1, 1, 1 },
        { 10.0, 10.0, 3.0, 128, 129, 2.0, 6, 6, 6, 6 },
        { 10.0, 10.0, 2.0, 128, 130, 1.0, 20, 20, 20, 20 },
    };
    GpStatus status;
    int i, j;
    GpGraphics *graphics;
    union
    {
        GpBitmap *bitmap;
        GpImage *image;
    } u;
    GpPen *pen;
    GpPointF corner;
    GpPath *path;
    BitmapData bd;
    INT min, max, size;

    for (i = 0; i < ARRAY_SIZE(td); i++)
    {
        status = GdipCreateBitmapFromScan0(100, 100, 0, PixelFormat24bppRGB, ((void*)0), &u.bitmap);
        expect(Ok, status);

        status = GdipBitmapSetResolution(u.bitmap, td[i].res_x, td[i].res_y);
        expect(Ok, status);

        status = GdipGetImageGraphicsContext(u.image, &graphics);
        expect(Ok, status);

        status = GdipSetPageUnit(graphics, td[i].page_unit);
        expect(Ok, status);

        status = GdipSetPageScale(graphics, td[i].scale);
        expect(Ok, status);

        status = GdipCreatePen1(0xffffffff, td[i].pen_width, td[i].pen_unit, &pen);
        expect(Ok, status);

        corner.X = corner.Y = 100.0;
        status = GdipTransformPoints(graphics, CoordinateSpaceWorld, CoordinateSpaceDevice, &corner, 1);
        expect(Ok, status);

        status = GdipDrawLine(graphics, pen, corner.X/2, 0, corner.X/2, corner.Y);
        expect(Ok, status);

        status = GdipDrawLine(graphics, pen, 0, corner.Y/2, corner.X, corner.Y/2);
        expect(Ok, status);

        status = GdipBitmapLockBits(u.bitmap, ((void*)0), ImageLockModeRead, PixelFormat24bppRGB, &bd);
        expect(Ok, status);

        min = -1;
        max = -2;

        for (j=0; j<100; j++)
        {
            if (((BYTE*)bd.Scan0)[j*3] == 0xff)
            {
                min = j;
                break;
            }
        }

        for (j=99; j>=0; j--)
        {
            if (((BYTE*)bd.Scan0)[j*3] == 0xff)
            {
                max = j;
                break;
            }
        }

        size = max-min+1;

        ok(size == td[i].cx, "%u: expected %d, got %d\n", i, td[i].cx, size);

        min = -1;
        max = -2;

        for (j=0; j<100; j++)
        {
            if (((BYTE*)bd.Scan0)[bd.Stride*j] == 0xff)
            {
                min = j;
                break;
            }
        }

        for (j=99; j>=0; j--)
        {
            if (((BYTE*)bd.Scan0)[bd.Stride*j] == 0xff)
            {
                max = j;
                break;
            }
        }

        size = max-min+1;

        ok(size == td[i].cy, "%u: expected %d, got %d\n", i, td[i].cy, size);

        status = GdipBitmapUnlockBits(u.bitmap, &bd);
        expect(Ok, status);

        status = GdipGraphicsClear(graphics, 0xff000000);
        expect(Ok, status);

        status = GdipCreatePath(FillModeAlternate, &path);
        expect(Ok, status);

        status = GdipAddPathLine(path, corner.X/2, 0, corner.X/2, corner.Y);
        expect(Ok, status);

        status = GdipClosePathFigure(path);
        expect(Ok, status);

        status = GdipAddPathLine(path, 0, corner.Y/2, corner.X, corner.Y/2);
        expect(Ok, status);

        status = GdipDrawPath(graphics, pen, path);
        expect(Ok, status);

        GdipDeletePath(path);

        status = GdipBitmapLockBits(u.bitmap, ((void*)0), ImageLockModeRead, PixelFormat24bppRGB, &bd);
        expect(Ok, status);

        min = -1;
        max = -2;

        for (j=0; j<100; j++)
        {
            if (((BYTE*)bd.Scan0)[j*3] == 0xff)
            {
                min = j;
                break;
            }
        }

        for (j=99; j>=0; j--)
        {
            if (((BYTE*)bd.Scan0)[j*3] == 0xff)
            {
                max = j;
                break;
            }
        }

        size = max-min+1;

        ok(size == td[i].path_cx, "%u: expected %d, got %d\n", i, td[i].path_cx, size);

        min = -1;
        max = -2;

        for (j=0; j<100; j++)
        {
            if (((BYTE*)bd.Scan0)[bd.Stride*j] == 0xff)
            {
                min = j;
                break;
            }
        }

        for (j=99; j>=0; j--)
        {
            if (((BYTE*)bd.Scan0)[bd.Stride*j] == 0xff)
            {
                max = j;
                break;
            }
        }

        size = max-min+1;

        ok(size == td[i].path_cy, "%u: expected %d, got %d\n", i, td[i].path_cy, size);

        status = GdipBitmapUnlockBits(u.bitmap, &bd);
        expect(Ok, status);

        GdipDeletePen(pen);
        GdipDeleteGraphics(graphics);
        GdipDisposeImage(u.image);
    }
}
