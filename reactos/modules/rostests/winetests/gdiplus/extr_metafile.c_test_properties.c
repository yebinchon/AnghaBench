
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {double member_0; double member_1; double member_2; double member_3; } ;
typedef int HENHMETAFILE ;
typedef int HDC ;
typedef int GpStatus ;
typedef TYPE_1__ GpRectF ;
typedef int GpMetafile ;
typedef int GpImage ;
typedef int GpGraphics ;


 int CompositingModeSourceCopy ;
 int CompositingModeSourceOver ;
 int CompositingQualityHighQuality ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteEnhMetaFile (int ) ;
 int EmfTypeEmfPlusOnly ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipGetHemfFromMetafile (int *,int *) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipRecordMetafile (int ,int ,TYPE_1__ const*,int ,char const*,int **) ;
 int GdipSetCompositingMode (int *,int ) ;
 int GdipSetCompositingQuality (int *,int ) ;
 int GdipSetInterpolationMode (int *,int ) ;
 int GdipSetPixelOffsetMode (int *,int ) ;
 int GdipSetSmoothingMode (int *,int ) ;
 int GdipSetTextRenderingHint (int *,int ) ;
 int InterpolationModeDefault ;
 int InterpolationModeHighQuality ;
 int MetafileFrameUnitPixel ;
 int Ok ;
 int PixelOffsetModeHighQuality ;
 int SmoothingModeAntiAlias ;
 int TextRenderingHintAntiAlias ;
 int TextRenderingHintSystemDefault ;
 int check_emfplus (int ,int ,char*) ;
 int expect (int ,int ) ;
 int properties_records ;
 int sync_metafile (int **,char*) ;

__attribute__((used)) static void test_properties(void)
{
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};

    GpMetafile *metafile;
    GpGraphics *graphics;
    HENHMETAFILE hemf;
    GpStatus stat;
    HDC hdc;

    hdc = CreateCompatibleDC(0);
    stat = GdipRecordMetafile(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    expect(Ok, stat);
    DeleteDC(hdc);

    stat = GdipGetImageGraphicsContext((GpImage*)metafile, &graphics);
    expect(Ok, stat);

    stat = GdipSetTextRenderingHint(graphics, TextRenderingHintSystemDefault);
    expect(Ok, stat);
    stat = GdipSetTextRenderingHint(graphics, TextRenderingHintAntiAlias);
    expect(Ok, stat);

    stat = GdipSetPixelOffsetMode(graphics, PixelOffsetModeHighQuality);
    expect(Ok, stat);
    stat = GdipSetPixelOffsetMode(graphics, PixelOffsetModeHighQuality);
    expect(Ok, stat);

    stat = GdipSetSmoothingMode(graphics, SmoothingModeAntiAlias);
    expect(Ok, stat);
    stat = GdipSetSmoothingMode(graphics, SmoothingModeAntiAlias);
    expect(Ok, stat);

    stat = GdipSetCompositingMode(graphics, CompositingModeSourceOver);
    expect(Ok, stat);
    stat = GdipSetCompositingMode(graphics, CompositingModeSourceCopy);
    expect(Ok, stat);

    stat = GdipSetCompositingQuality(graphics, CompositingQualityHighQuality);
    expect(Ok, stat);
    stat = GdipSetCompositingQuality(graphics, CompositingQualityHighQuality);
    expect(Ok, stat);

    stat = GdipSetInterpolationMode(graphics, InterpolationModeDefault);
    expect(Ok, stat);
    stat = GdipSetInterpolationMode(graphics, InterpolationModeHighQuality);
    expect(Ok, stat);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);
    sync_metafile(&metafile, "properties.emf");

    stat = GdipGetHemfFromMetafile(metafile, &hemf);
    expect(Ok, stat);

    check_emfplus(hemf, properties_records, "properties");
    DeleteEnhMetaFile(hemf);

    stat = GdipDisposeImage((GpImage*)metafile);
    expect(Ok, stat);
}
