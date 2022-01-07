
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
typedef int GpSolidFill ;
typedef TYPE_1__ GpRectF ;
typedef int GpPath ;
typedef int GpMetafile ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBrush ;


 int CopyEnhMetaFileW (int ,char const*) ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteEnhMetaFile (int ) ;
 int DeleteFileW (char const*) ;
 int EmfTypeEmfPlusOnly ;
 int FillModeAlternate ;
 int GdipAddPathLine (int *,int,int,int,int) ;
 int GdipCreateMetafileFromWmfFile (char const*,int *,int **) ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreateSolidFill (int,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeletePath (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipFillPath (int *,int *,int *) ;
 int GdipGetHemfFromMetafile (int *,int *) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipRecordMetafile (int ,int ,TYPE_1__ const*,int ,char const*,int **) ;
 int GenericError ;
 int MetafileFrameUnitPixel ;
 int Ok ;
 int check_emfplus (int ,int ,char*) ;
 int expect (int ,int ) ;
 int fill_path_records ;
 int sync_metafile (int **,char*) ;

__attribute__((used)) static void test_fillpath(void)
{
    static const WCHAR description[] = {'w','i','n','e','t','e','s','t',0};
    static const GpRectF frame = {0.0, 0.0, 100.0, 100.0};
    static const WCHAR winetestemfW[] = {'w','i','n','e','t','e','s','t','.','e','m','f',0};

    GpMetafile *metafile;
    GpGraphics *graphics;
    GpSolidFill *brush;
    HENHMETAFILE hemf;
    GpStatus stat;
    GpPath *path;
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
    stat = GdipAddPathLine(path, 30, 30, 5, 30);
    expect(Ok, stat);

    stat = GdipCreateSolidFill(0xffaabbcc, &brush);
    expect(Ok, stat);

    stat = GdipFillPath(graphics, (GpBrush*)brush, path);
    expect(Ok, stat);

    stat = GdipDeleteBrush((GpBrush*)brush);
    expect(Ok, stat);
    stat = GdipDeletePath(path);
    expect(Ok, stat);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);
    sync_metafile(&metafile, "fill_path.emf");

    stat = GdipGetHemfFromMetafile(metafile, &hemf);
    expect(Ok, stat);

    check_emfplus(hemf, fill_path_records, "fill path");


    DeleteEnhMetaFile(CopyEnhMetaFileW(hemf, winetestemfW));

    DeleteEnhMetaFile(hemf);

    stat = GdipDisposeImage((GpImage*)metafile);
    expect(Ok, stat);


    stat = GdipCreateMetafileFromWmfFile(winetestemfW, ((void*)0), &metafile);
    expect(Ok, stat);

    stat = GdipDisposeImage((GpImage*)metafile);
    expect(Ok, stat);

    DeleteFileW(winetestemfW);

    stat = GdipCreateMetafileFromWmfFile(winetestemfW, ((void*)0), &metafile);
    expect(GenericError, stat);
}
