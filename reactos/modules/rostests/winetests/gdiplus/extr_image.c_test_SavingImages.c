
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {int Clsid; } ;
typedef double REAL ;
typedef TYPE_1__ ImageCodecInfo ;
typedef scalar_t__ GpStatus ;
typedef int GpImage ;
typedef int GpBitmap ;
typedef char CHAR ;


 int DeleteFileA (char const*) ;
 TYPE_1__* GdipAlloc (scalar_t__) ;
 scalar_t__ GdipCreateBitmapFromScan0 (double const,double const,int ,int ,int *,int **) ;
 int GdipDisposeImage (int *) ;
 int GdipFree (TYPE_1__*) ;
 scalar_t__ GdipGetImageDimension (int *,double*,double*) ;
 scalar_t__ GdipGetImageEncoders (scalar_t__,scalar_t__,TYPE_1__*) ;
 scalar_t__ GdipGetImageEncodersSize (scalar_t__*,scalar_t__*) ;
 scalar_t__ GdipLoadImageFromFile (char const*,int **) ;
 scalar_t__ GdipSaveImageToFile (int *,char const*,int *,int ) ;
 scalar_t__ InvalidParameter ;
 scalar_t__ Ok ;
 int PixelFormat24bppRGB ;
 int expect (scalar_t__,scalar_t__) ;
 int expectf (double const,double) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_SavingImages(void)
{
    GpStatus stat;
    GpBitmap *bm;
    UINT n;
    UINT s;
    const REAL WIDTH = 10.0, HEIGHT = 20.0;
    REAL w, h;
    ImageCodecInfo *codecs;
    static const CHAR filenameA[] = "a.bmp";
    static const WCHAR filename[] = { 'a','.','b','m','p',0 };

    codecs = ((void*)0);

    stat = GdipSaveImageToFile(0, 0, 0, 0);
    expect(InvalidParameter, stat);

    bm = ((void*)0);
    stat = GdipCreateBitmapFromScan0(WIDTH, HEIGHT, 0, PixelFormat24bppRGB, ((void*)0), &bm);
    expect(Ok, stat);
    if (!bm)
        return;


    stat = GdipSaveImageToFile((GpImage*)bm, 0, 0, 0);
    expect(InvalidParameter, stat);

    stat = GdipSaveImageToFile((GpImage*)bm, filename, 0, 0);
    expect(InvalidParameter, stat);


    stat = GdipGetImageEncodersSize(&n, &s);
    if (stat != Ok || n == 0) goto cleanup;

    codecs = GdipAlloc(s);
    if (!codecs) goto cleanup;

    stat = GdipGetImageEncoders(n, s, codecs);
    if (stat != Ok) goto cleanup;

    stat = GdipSaveImageToFile((GpImage*)bm, filename, &codecs[0].Clsid, 0);
    expect(Ok, stat);

    GdipDisposeImage((GpImage*)bm);
    bm = 0;


    stat = GdipLoadImageFromFile(filename, (GpImage**)&bm);
    expect(Ok, stat);
    if (stat != Ok) goto cleanup;

    stat = GdipGetImageDimension((GpImage*)bm, &w, &h);
    if (stat != Ok) goto cleanup;

    expectf(WIDTH, w);
    expectf(HEIGHT, h);

 cleanup:
    GdipFree(codecs);
    if (bm)
        GdipDisposeImage((GpImage*)bm);
    ok(DeleteFileA(filenameA), "Delete failed.\n");
}
