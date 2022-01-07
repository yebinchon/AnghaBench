
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int info ;
typedef int buff ;
typedef char WCHAR ;
struct TYPE_29__ {double member_0; double member_1; } ;
struct TYPE_28__ {double member_0; double member_1; double member_2; double member_3; } ;
struct TYPE_27__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; } ;
struct TYPE_26__ {double member_0; double member_1; double member_2; double member_3; double member_4; } ;
struct TYPE_25__ {double member_0; double member_1; double member_2; double member_3; double member_4; } ;
struct TYPE_24__ {double member_0; double member_1; double member_2; double member_3; double member_4; } ;
struct TYPE_23__ {double member_0; double member_1; double member_2; double member_3; double member_4; } ;
struct TYPE_22__ {double member_0; double member_1; double member_2; double member_3; double member_4; } ;
struct TYPE_21__ {TYPE_6__ member_4; TYPE_5__ member_3; TYPE_4__ member_2; TYPE_3__ member_1; TYPE_2__ member_0; } ;
struct TYPE_20__ {TYPE_7__ bmiHeader; } ;
struct TYPE_19__ {TYPE_1__ member_0; } ;
typedef int HENHMETAFILE ;
typedef int HDC ;
typedef int GpStatus ;
typedef TYPE_8__ GpRectF ;
typedef TYPE_9__ GpPointF ;
typedef int GpMetafile ;
typedef int GpImageAttributes ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBitmap ;
typedef TYPE_10__ ColorMatrix ;
typedef TYPE_11__ BYTE ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_11__ BITMAPINFO ;


 int BI_RGB ;
 int ColorAdjustTypeDefault ;
 int ColorMatrixFlagsDefault ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteEnhMetaFile (int ) ;
 int EmfTypeEmfPlusOnly ;
 int GdipCreateBitmapFromGdiDib (TYPE_11__*,TYPE_11__*,int **) ;
 int GdipCreateImageAttributes (int **) ;
 int GdipCreateMetafileFromEmf (int ,int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipDisposeImageAttributes (int *) ;
 int GdipDrawImagePointsRect (int *,int *,TYPE_9__ const*,int,double,double,double,double,int ,int *,int *,int *) ;
 int GdipGetHemfFromMetafile (int *,int *) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipRecordMetafile (int ,int ,TYPE_8__ const*,int ,char const*,int **) ;
 int GdipSetImageAttributesColorMatrix (int *,int ,int ,TYPE_10__ const*,int *,int ) ;
 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int MetafileFrameUnitPixel ;
 int Ok ;
 int TRUE ;
 int UnitPixel ;
 int check_emfplus (int ,int ,char*) ;
 int draw_image_bitmap_records ;
 int draw_image_metafile_records ;
 int expect (int ,int ) ;
 int memset (TYPE_11__*,int,int) ;
 int sync_metafile (int **,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_drawimage(void)
{
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    static const GpPointF dst_points[3] = {{10.0,10.0},{85.0,15.0},{10.0,80.0}};
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};
    const ColorMatrix double_red = {{
        {2.0,0.0,0.0,0.0,0.0},
        {0.0,1.0,0.0,0.0,0.0},
        {0.0,0.0,1.0,0.0,0.0},
        {0.0,0.0,0.0,1.0,0.0},
        {0.0,0.0,0.0,0.0,1.0}}};

    GpImageAttributes *imageattr;
    GpMetafile *metafile;
    GpGraphics *graphics;
    HENHMETAFILE hemf;
    GpStatus stat;
    BITMAPINFO info;
    BYTE buff[400];
    GpImage *image;
    HDC hdc;

    hdc = CreateCompatibleDC(0);
    stat = GdipRecordMetafile(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    expect(Ok, stat);

    stat = GdipGetImageGraphicsContext((GpImage*)metafile, &graphics);
    expect(Ok, stat);

    memset(&info, 0, sizeof(info));
    info.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    info.bmiHeader.biWidth = 10;
    info.bmiHeader.biHeight = 10;
    info.bmiHeader.biPlanes = 1;
    info.bmiHeader.biBitCount = 32;
    info.bmiHeader.biCompression = BI_RGB;
    memset(buff, 0x80, sizeof(buff));
    stat = GdipCreateBitmapFromGdiDib(&info, buff, (GpBitmap**)&image);
    expect(Ok, stat);

    stat = GdipCreateImageAttributes(&imageattr);
    expect(Ok, stat);

    stat = GdipSetImageAttributesColorMatrix(imageattr, ColorAdjustTypeDefault,
            TRUE, &double_red, ((void*)0), ColorMatrixFlagsDefault);
    expect(Ok, stat);

    stat = GdipDrawImagePointsRect(graphics, image, dst_points, 3,
            0.0, 0.0, 10.0, 10.0, UnitPixel, imageattr, ((void*)0), ((void*)0));
    GdipDisposeImageAttributes(imageattr);
    expect(Ok, stat);

    GdipDisposeImage(image);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);
    sync_metafile(&metafile, "draw_image_bitmap.emf");

    stat = GdipGetHemfFromMetafile(metafile, &hemf);
    expect(Ok, stat);

    check_emfplus(hemf, draw_image_bitmap_records, "draw image bitmap");


    stat = GdipRecordMetafile(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    expect(Ok, stat);

    stat = GdipGetImageGraphicsContext((GpImage*)metafile, &graphics);
    expect(Ok, stat);

    stat = GdipCreateMetafileFromEmf(hemf, TRUE, (GpMetafile**)&image);
    expect(Ok, stat);

    stat = GdipDrawImagePointsRect(graphics, image, dst_points, 3,
            0.0, 0.0, 100.0, 100.0, UnitPixel, ((void*)0), ((void*)0), ((void*)0));
    expect(Ok, stat);

    GdipDisposeImage(image);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);
    sync_metafile(&metafile, "draw_image_metafile.emf");

    stat = GdipGetHemfFromMetafile(metafile, &hemf);
    expect(Ok, stat);

    if (GetProcAddress(GetModuleHandleA("gdiplus.dll"), "GdipConvertToEmfPlus"))
    {
        check_emfplus(hemf, draw_image_metafile_records, "draw image metafile");
    }
    else
    {
        win_skip("draw image metafile records tests skipped\n");
    }
    DeleteEnhMetaFile(hemf);

    DeleteDC(hdc);
    stat = GdipDisposeImage((GpImage*)metafile);
    expect(Ok, stat);
}
