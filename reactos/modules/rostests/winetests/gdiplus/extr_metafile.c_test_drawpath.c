
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
typedef int GpPen ;
typedef int GpPath ;
typedef int GpMetafile ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int ARGB ;


 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteEnhMetaFile (int ) ;
 int EmfTypeEmfPlusOnly ;
 int FillModeAlternate ;
 int GdipAddPathLine (int *,int,int,int,int) ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreatePen1 (int ,float,int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeletePath (int *) ;
 int GdipDeletePen (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipDrawPath (int *,int *,int *) ;
 int GdipGetHemfFromMetafile (int *,int *) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipRecordMetafile (int ,int ,TYPE_1__ const*,int ,char const*,int **) ;
 int MetafileFrameUnitPixel ;
 int Ok ;
 int UnitPixel ;
 int check_emfplus (int ,int ,char*) ;
 int draw_path_records ;
 int expect (int ,int ) ;
 int sync_metafile (int **,char*) ;

__attribute__((used)) static void test_drawpath(void)
{
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};

    GpMetafile *metafile;
    GpGraphics *graphics;
    HENHMETAFILE hemf;
    GpStatus stat;
    GpPath *path;
    GpPen *pen;
    HDC hdc;

    hdc = CreateCompatibleDC(0);
    stat = GdipRecordMetafile(hdc, EmfTypeEmfPlusOnly, &frame, MetafileFrameUnitPixel, description, &metafile);
    expect(Ok, stat);
    DeleteDC(hdc);

    stat = GdipGetImageGraphicsContext((GpImage*)metafile, &graphics);
    expect(Ok, stat);

    stat = GdipCreatePath(FillModeAlternate, &path);
    expect(Ok, stat);
    stat = GdipAddPathLine(path, 5, 5, 30, 30);
    expect(Ok, stat);

    stat = GdipCreatePen1((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    expect(Ok, stat);

    stat = GdipDrawPath(graphics, pen, path);
    expect(Ok, stat);

    stat = GdipDeletePen(pen);
    expect(Ok, stat);
    stat = GdipDeletePath(path);
    expect(Ok, stat);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);
    sync_metafile(&metafile, "draw_path.emf");

    stat = GdipGetHemfFromMetafile(metafile, &hemf);
    expect(Ok, stat);

    check_emfplus(hemf, draw_path_records, "draw path");
    DeleteEnhMetaFile(hemf);

    stat = GdipDisposeImage((GpImage*)metafile);
    expect(Ok, stat);
}
